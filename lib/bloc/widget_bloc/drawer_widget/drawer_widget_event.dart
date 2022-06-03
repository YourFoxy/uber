import 'package:uber/scripts/index.dart';

abstract class DrawerWidgetEvent {}

class ExitEvent extends DrawerWidgetEvent {
  final BuildContext context;

  ExitEvent({required this.context});
}
