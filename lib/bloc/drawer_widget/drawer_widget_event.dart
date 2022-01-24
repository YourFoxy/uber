import 'package:flutter/cupertino.dart';

abstract class DrawerWidgetEvent {}

class ExitEvent extends DrawerWidgetEvent {
  final BuildContext context;

  ExitEvent({required this.context});
}
