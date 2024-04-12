import 'package:now_go_app/importer.dart';

class WebViewPage extends ConsumerWidget {
  final String url;
  const WebViewPage({Key? key, required String this.url}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: WebViewWidget(
        controller: ref.watch(webViewControllerProvider(url)),
      ),
    );
  }
}

final webViewControllerProvider =
    Provider.autoDispose.family<WebViewController, String>(
  (ref, url) => WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
      Uri.parse(url),
    ),
);
