abstract class EditableRectangularAvatarEvent {}

class UploadAvatarEvent extends EditableRectangularAvatarEvent {}

class SetAvatarEvent extends EditableRectangularAvatarEvent {
  final String url;
  SetAvatarEvent({
    required this.url,
  });
}
