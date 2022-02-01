abstract class EditableAvatarEvent {}

class SetAvatarEvent extends EditableAvatarEvent {
  final String url;
  final Function function;

  SetAvatarEvent({
    required this.url,
    required this.function,
  });
}
