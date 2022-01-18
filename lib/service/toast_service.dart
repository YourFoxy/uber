import 'package:flutter/cupertino.dart';
import 'package:uber/scripts/widgets.dart';

class ToastService {
  void showGeneralErrorToast(String text) {
    Widgets.toast(text);
  }
}
