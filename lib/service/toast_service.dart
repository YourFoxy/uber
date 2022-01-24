import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/scripts/widgets.dart';

class ToastService {
  // late final service  =  GetIt.instance.get<ToastService>();
  // ToastService n = GetIt.instance.get<ToastService>();
  //ToastService()
  void showGeneralErrorToast(String text) {
    Widgets.toast(text);
  }
}
