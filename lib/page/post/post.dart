import 'dart:io';

import 'package:now_go_app/importer.dart';

typedef _Providers = PostProviders;

class Post extends ConsumerWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusNode = ref.watch(_Providers.focusNodeProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 100), () {
        focusNode.requestFocus();
      });
    });

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            ref.read(_Providers.postController).clear();
            context.pop();
          },
        ),
        actions: [
          const _SubmitPostButton(),
          HorizontalMargin(width: 10),
        ],
      ),
      body: _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: ref.watch(_Providers.formKeyProvider),
      child: Column(
        children: <Widget>[
          _PostTextFiled(),
          _KeyBoardToolBars(),
          // image_picker選択後のずれ込み防止
          if (ref.watch(_Providers.sizedBoxOnProviser) != 0)
            SizedBox(height: 25)
        ],
      ),
    );
  }
}

class _PostTextFiled extends ConsumerWidget {
  const _PostTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(_Providers.postController);
    final focusNode = ref.watch(_Providers.focusNodeProvider);
    final images = ref.watch(_Providers.newImageProvider);
    double gridHeight;
    if (images.length == 1) {
      gridHeight = 200; // 1枚の場合の高さ
    } else if (images.length <= 4) {
      gridHeight = 400; // 2〜4枚の場合の高さ（2行表示）
    } else {
      gridHeight = 600; // それ以上の場合（適宜調整）
    }

    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            TextFormField(
              controller: controller,
              focusNode: focusNode,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              maxLength: 1000,
              decoration: InputDecoration(
                hintText: "何か投稿してみましょう",
                border: InputBorder.none,
              ),
            ),
            if (images.isNotEmpty) // 画像がある場合のみ表示
              _PostFieldImagePreview(),
          ],
        ),
      ),
    );
  }
}

class _PostFieldImagePreview extends ConsumerWidget {
  const _PostFieldImagePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(_Providers.newImageProvider);
    int crossAxisCount = images.length >= 3 ? 2 : images.length;

    return SizedBox(
      height: 400, // 固定高さ
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(), // スクロールを無効にする
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: (images.length == 1)
              ? 1.0
              : (images.length == 2)
                  ? 1.5
                  : 1,
          mainAxisSpacing: 8, // 縦方向のスペース
          crossAxisSpacing: 8, // 横方向のスペース
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8), // 角を丸める
            child: Image.file(
              images[index],
              fit: BoxFit.cover, // 画像を枠にフィットさせる
            ),
          );
        },
      ),
    );
  }
}

class _KeyBoardToolBars extends ConsumerWidget {
  const _KeyBoardToolBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _LocationToolBar(),
        _ImageToolBar(),
      ],
    );
  }
}

class _LocationToolBar extends ConsumerWidget {
  const _LocationToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.3,
            color: Theme.of(context).extension<MyColors>()!.nowGoColor,
          ),
        ),
      ),
      height: 50,
      child: Row(
        children: [
          const HorizontalMargin(width: 10),
          // ラジオボタン
          Expanded(
            child: RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(LocationPostOption.currentLocation.displayName),
              value: LocationPostOption.currentLocation,
              groupValue: ref.watch(_Providers.postLocationSelectProvider),
              onChanged: (value) {
                ref.read(_Providers.postLocationSelectProvider.notifier).state =
                    value as LocationPostOption;
              },
            ),
          ),
          Expanded(
            child: RadioListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(LocationPostOption.otherLocation.displayName),
              value: LocationPostOption.otherLocation,
              groupValue: ref.watch(_Providers.postLocationSelectProvider),
              onChanged: (value) {
                ref.read(_Providers.postLocationSelectProvider.notifier).state =
                    value as LocationPostOption;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageToolBar extends ConsumerWidget {
  const _ImageToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newImage = ref.watch(_Providers.newImageProvider);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.3,
            color: Theme.of(context).extension<MyColors>()!.nowGoColor,
          ),
        ),
      ),
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newImage.length + 2, // 元の要素数 + 2 (マージンとアップロードボタン)
        itemBuilder: (context, index) {
          if (index == 0) {
            return const HorizontalMargin(width: 10);
          } else if (index == 1) {
            return UnconstrainedBox(
              child: _ImageUploadButton(),
            );
          } else {
            // indexから2を引くことで、正しいリストのインデックスを得る
            final imageIndex = index - 2;
            return UnconstrainedBox(
              child: _PreviewImage(
                image: newImage[imageIndex],
                index: imageIndex, // ここでインデックスを渡す
              ),
            );
          }
        },
      ),
    );
  }
}

class _PreviewImage extends ConsumerWidget {
  final File image;
  final int index;
  const _PreviewImage({
    Key? key,
    required this.image,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: 50.w,
          height: 50.w,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: FileImage(image),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Theme.of(context).extension<MyColors>()!.nowGoColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              final newImageNotifier =
                  ref.read(_Providers.newImageProvider.notifier);
              List<File> updatedImages = List.from(newImageNotifier.state);
              updatedImages.removeAt(index);
              newImageNotifier.state = updatedImages;
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                size: 20,
                color: Theme.of(context).extension<MyColors>()!.nowGoColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ImageUploadButton extends ConsumerWidget {
  _ImageUploadButton({Key? key}) : super(key: key);
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageCount =
        ref.watch(_Providers.newImageProvider.notifier).state.length;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: imageCount < 4
            ? () async {
                ref.read(_Providers.sizedBoxOnProviser.notifier).state++;
                final XFile? file =
                    await _picker.pickImage(source: ImageSource.gallery);
                if (file != null) {
                  ref.read(imageCompressProvider)(file, (compressedFile) {
                    final newImage =
                        ref.read(_Providers.newImageProvider.notifier);
                    List<File> updatedImages = List<File>.from(newImage.state);
                    updatedImages.add(File(compressedFile!.path));
                    newImage.state = updatedImages;
                  });
                }
              }
            : null,
        style: ElevatedButton.styleFrom(
          surfaceTintColor: Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Theme.of(context).extension<MyColors>()!.nowGoColor,
            ),
          ),
          padding: const EdgeInsets.all(0),
          fixedSize: Size(50.w, 50.w),
        ),
        child: Center(
          child: Icon(
            Icons.add_photo_alternate,
            size: 35,
            color: Theme.of(context).extension<MyColors>()!.nowGoColor,
          ),
        ),
      ),
    );
  }
}

class _SubmitPostButton extends ConsumerWidget {
  const _SubmitPostButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postController = ref.watch(_Providers.postController);
    final postLocationSelect = ref.watch(_Providers.postLocationSelectProvider);

    // 改行と空文字を防ぐ
    if (postController.text.trim().isEmpty) {
      return const _PostButton(
        disable: true,
      );
    }

    if (postLocationSelect == LocationPostOption.currentLocation) {
      return const _PostButton();
    }
    if (postLocationSelect == LocationPostOption.otherLocation) {
      return const _SelectLocationButton();
    }

    return const SizedBox();
  }
}

class _PostButton extends ConsumerWidget {
  final bool disable;
  const _PostButton({Key? key, this.disable = false}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainButton(
      onPressed: disable ? null : () {},
      width: 70,
      height: 10,
      text: "投稿",
      fontSize: 12,
    );
  }
}

class _SelectLocationButton extends ConsumerWidget {
  const _SelectLocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainButton(
      onPressed: () {},
      width: 100,
      height: 10,
      text: "場所を選択",
      fontSize: 12,
    );
  }
}
