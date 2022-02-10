import 'package:flutter/cupertino.dart';

abstract class LongSaveButtonWidgetEvent {}

class SaveUserInformationEvent extends LongSaveButtonWidgetEvent {
  final String nickname;
  final String city;
  final String pickImageUrl;
  final BuildContext context;
  SaveUserInformationEvent({
    required this.nickname,
    required this.city,
    required this.pickImageUrl,
    required this.context,
  });
}
