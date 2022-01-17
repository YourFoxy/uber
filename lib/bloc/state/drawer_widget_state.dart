import 'package:flutter/material.dart';

@immutable
abstract class DrawerWidgetState {}

class WidgetInitialState extends DrawerWidgetState {}

class ExitState extends DrawerWidgetState {}

class ExceptionExitState extends DrawerWidgetState {
  final String exception;

  ExceptionExitState({required this.exception});
}
