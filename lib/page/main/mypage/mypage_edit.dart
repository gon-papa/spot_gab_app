import 'package:spot_gab_app/importer.dart';

typedef _Providers = MyPageEditProviders;

class MyPageEdit extends HookConsumerWidget {
  const MyPageEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncUser = useFuture(
      useMemoized(
        () => ref.read(userNotifierProvider.notifier).me(ref, context),
        [],
      ),
      initialData: null,
    );

    if (asyncUser.connectionState == ConnectionState.waiting) {
      return const WaitingView();
    }

    if (asyncUser.hasData) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('ユーザー情報編集'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              MyPageRoute().go(context);
            },
          ),
        ),
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Form(
              key: ref.watch(_Providers.myPageEditGlobalKeyProvider),
              child: Padding(
                padding: EdgeInsets.only(left: 40.w, right: 40.w),
                child: _Body(),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _EditButton(),
      );
    }

    if (asyncUser.hasError || asyncUser.error == null) {
      return const HasErrorView();
    }
    return const SizedBox();
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        VerticalMargin(height: 10.h),
        _UserImage(),
        VerticalMargin(height: 10.h),
        _UserName(),
        VerticalMargin(height: 5.h),
        _Link(),
        VerticalMargin(height: 5.h),
        _Profile(),
        VerticalMargin(height: 40.h),
      ],
    );
  }
}

class _UserImage extends ConsumerWidget {
  _UserImage({Key? key}) : super(key: key);
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _image = ref.watch(_Providers.previewImageProvider.notifier).state;

    return GestureDetector(
      onTap: () async {
        final XFile? file =
            await _picker.pickImage(source: ImageSource.gallery);
        if (file != null) {
          await ref.watch(imageCropProvider)(context, file, (croppedFile) {
            ref.watch(_Providers.newImageProvider.notifier).state = croppedFile;
          });
        }
      },
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50,
              backgroundImage: _image.image,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5), // 灰色のマスクを適用
                shape: BoxShape.circle, // 丸型に設定
              ),
            ),
            const Icon(
              Icons.edit, // 編集アイコン
              color: Colors.white, // アイコンの色
              size: 30, // アイコンのサイズ
            ),
          ],
        ),
      ),
    );
  }
}

class _UserName extends ConsumerWidget {
  const _UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider.notifier).currentState;
    return TextFormField(
      controller:
          ref.watch(_Providers.accountNameController(user?.accountName)),
      decoration: const InputDecoration(
        labelText: 'ユーザー名',
      ),
      keyboardType: TextInputType.name,
      validator: ref.watch(myPageValidation).accountNameValidator.call(context),
    );
  }
}

class _Link extends ConsumerWidget {
  const _Link({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider.notifier).currentState;
    return TextFormField(
      controller: ref.watch(_Providers.linkController(user?.link)),
      decoration: const InputDecoration(
        labelText: 'リンク',
      ),
      keyboardType: TextInputType.url,
      validator: ref.watch(myPageValidation).linkValidator.call(context),
    );
  }
}

class _Profile extends ConsumerWidget {
  const _Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider.notifier).currentState;
    return TextFormField(
      controller: ref.watch(_Providers.profileController(user?.profile)),
      decoration: const InputDecoration(
        labelText: 'プロフィール',
      ),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      maxLength: 130,
      validator: ref.watch(myPageValidation).profileValidator.call(context),
    );
  }
}

class _EditButton extends ConsumerWidget {
  const _EditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider.notifier).currentState;
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 40.h),
      child: PrimaryButton(
        onPressed: () {
          ref.read(_Providers.myPageEditSubmitProvider).call(
                context: context,
                accountName: ref
                    .watch(_Providers.accountNameController(user?.accountName))
                    .text,
                link: ref.watch(_Providers.linkController(user?.link)).text,
                profile:
                    ref.watch(_Providers.profileController(user?.profile)).text,
                newImage: ref.watch(_Providers.newImageProvider.notifier).state,
              );
        },
        text: '編集する',
        width: 280,
        height: 38,
      ),
    );
  }
}
