import 'package:spot_gab_app/importer.dart';

class ErrorListenerWidget extends ConsumerWidget {
  const ErrorListenerWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _Providers = ref.watch(errorListnerProviders);
    final message = ref.watch(_Providers.errorMessageProvider);
    if (message != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final nav = ref.watch(globalKeyProvider).currentState;
        // Builderを使用して新しいBuildContextを生成し、それをshowErrorDialogに渡す
        showDialog(
          context: nav!.overlay!.context, // showDialogを呼び出すためのcontext
          builder: (BuildContext dialogContext) {
            // showDialogのbuilderが提供する新しいcontext
            return AlertDialog(
              backgroundColor: Colors.white,
              title: Text(L10n.of(dialogContext)?.error ?? ''),
              content: Text(
                message,
                style: TextStyle(fontSize: 16.sp),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'OK',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  onPressed: () {
                    // エラーメッセージをクリア
                    ref.read(_Providers.errorMessageProvider.notifier).state =
                        null;
                    // dialogContextを使用してダイアログを閉じる
                    Navigator.of(dialogContext).pop();
                  },
                ),
              ],
            );
          },
        );
      });
    }

    return child;
  }
}

class ErrorListnerProviders {
  final defaultError = 'defaultError';
  final errorMessageProvider = StateProvider<String?>((ref) => null);

  void notifyError(ref, String message) {
    ref.read(errorMessageProvider.notifier).state = message;
  }
}

final errorListnerProviders =
    Provider.autoDispose((ref) => ErrorListnerProviders());
