abstract class AvatarWidgetEvent {}

class SetAvatarEvent extends AvatarWidgetEvent {
  final String url;
  final Function function;

  SetAvatarEvent({
    required this.url,
    required this.function,
  });
}
