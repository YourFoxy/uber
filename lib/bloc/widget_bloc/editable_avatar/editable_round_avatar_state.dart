//import 'package:flutter/material.dart';
import 'package:uber/scripts/index.dart';


@immutable
abstract class EditableRoundAvatarState {}

class WidgetInitState extends EditableRoundAvatarState {}

class AvatarUrlState extends EditableRoundAvatarState {
  final String url;

  AvatarUrlState({required this.url});
}
