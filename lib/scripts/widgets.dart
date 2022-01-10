import 'package:fluttertoast/fluttertoast.dart';
import 'package:uber/widgets/toast_widget.dart';

class Widgets {
  static void Toast(String text) {
    FToast().showToast(
      child: ToastWidget(
        text: text,
      ),
      gravity: ToastGravity.CENTER,
      toastDuration: Duration(seconds: 2),
    );
  }
}
