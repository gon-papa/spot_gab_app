import 'package:now_go_app/importer.dart';

class CoustomFloatingActionButton extends ConsumerWidget {
  const CoustomFloatingActionButton({Key? key, required this.onPressed})
      : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 50.w,
      height: 50.h,
      child: FloatingActionButton(
        onPressed: onPressed,
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(
          Icons.navigate_next,
          size: 40,
        ),
      ),
    );
  }
}
