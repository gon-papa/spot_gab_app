import 'package:now_go_app/importer.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        showDialog(
          context: context,
          builder: (context) {
            // TODO: サポートに連絡する方法を表示する
            return const AlertDialog(
              content: Text("サポートに連絡する方法"),
            );
          },
        );
      };
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: L10n.of(context)?.needHelpQuestion ?? "",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    TextSpan(
                      text: L10n.of(context)?.contactSupportButton ?? "",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: tapGestureRecognizer,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
