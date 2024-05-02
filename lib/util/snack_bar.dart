import 'package:now_go_app/importer.dart';

class UpperSnackBar {
  void showSnackBar({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    final overlay = Overlay.of(context)!;

    AnimationController controller = AnimationController(
      vsync: Navigator.of(context, rootNavigator: true),
      duration: const Duration(milliseconds: 300),
    );

    late OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Positioned(
            top: 40.h + controller.value * -120.h, // 上にスライドするアニメーション
            left: 16,
            right: 16,
            child: child!,
          );
        },
        child: Material(
          color: Colors.transparent,
          child: Dismissible(
            direction: DismissDirection.up,
            onDismissed: (direction) {
              controller.reverse();
              Future.delayed(Duration(milliseconds: 300), () {
                overlayEntry.remove();
              });
            },
            key: ValueKey(message),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              decoration: BoxDecoration(
                color: Theme.of(context).extension<MyColors>()!.nowGoColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(duration, () {
      controller.forward(); // アニメーション開始
      Future.delayed(Duration(milliseconds: 300), () {
        overlayEntry.remove();
      });
    });
  }
}
