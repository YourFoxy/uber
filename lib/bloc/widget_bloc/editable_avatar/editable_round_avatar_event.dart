abstract class EditableRoundAvatarEvent {}

class SetAvatarEvent extends EditableRoundAvatarEvent {
  final String url;
  SetAvatarEvent({
    required this.url,
  });
}
