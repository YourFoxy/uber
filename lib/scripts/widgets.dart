// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:uber/widgets/toast_widget.dart';

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
