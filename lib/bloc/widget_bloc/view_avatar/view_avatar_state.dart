import 'package:uber/scripts/index.dart';


@immutable
abstract class ViewAvatarState {}

class PageViewAvatarInitialState extends ViewAvatarState {}

class UploadViewAvatarState extends ViewAvatarState {
  final String url;

  UploadViewAvatarState({required this.url});
}
