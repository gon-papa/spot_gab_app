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

    return _Scaffold(
      body: const _Body(),
    );
  }
}

class _Scaffold extends StatelessWidget {
  const _Scaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          const _SubmitPostButton(),
          HorizontalMargin(width: 10),
        ],
      ),
      body: body,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _PostTextFiled(),
          Spacer(),
          _LocationToolBar(),
          _ImageToolBar(),
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

    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextFormField(
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
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const HorizontalMargin(width: 10),
          UnconstrainedBox(
            child: _ImageUploadButton(),
          ),
        ],
      ),
    );
  }
}

class _ImageUploadButton extends ConsumerWidget {
  const _ImageUploadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {},
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
    );
  }
}

class _SubmitPostButton extends ConsumerWidget {
  const _SubmitPostButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postController = ref.watch(_Providers.postController);
    final postLocationSelect = ref.watch(_Providers.postLocationSelectProvider);

    if (postController.text.isEmpty) {
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
      width: 60,
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
