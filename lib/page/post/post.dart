import 'package:now_go_app/importer.dart';

typedef _Providers = PostProviders;

class Post extends ConsumerWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusNode = ref.watch(_Providers.focusNodeProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.isCurrent) {
        focusNode.requestFocus();
      }
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: body,
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          // controller: _controller,
          maxLines: null,
          decoration: InputDecoration(
            hintText: "What's happening?",
            border: InputBorder.none,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ここに必要に応じてアイコンを追加
              Icon(Icons.add_photo_alternate,
                  color: Theme.of(context).primaryColor),
              ElevatedButton(
                onPressed: () {},
                child: Text('Tweet'),
                style: ElevatedButton.styleFrom(
                    // primary: Colors.blue, // ボタンの背景色
                    // onPrimary: Colors.white, // ボタンのテキスト色
                    ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PostTextFiled extends ConsumerWidget {
  const PostTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(_Providers.postController);
    final focusNode = ref.watch(_Providers.focusNodeProvider);
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        print('フォーカスが得られました！');
      } else {
        print('フォーカスが失われました！');
      }
    });

    return TextField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.text,
      maxLines: null,
      decoration: InputDecoration(
        hintText: "What's happening?",
        border: InputBorder.none,
      ),
    );
  }
}
