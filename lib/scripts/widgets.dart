import 'package:uber/scripts/index.dart';

class Widgets {
  static void toast(String text) {
    FToast().showToast(
      child: ToastWidget(
        text: text,
      ),
      gravity: ToastGravity.CENTER,
      toastDuration: const Duration(seconds: 2),
    );
  }
}
