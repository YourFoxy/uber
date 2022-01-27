abstract class AvatarWidgetForUpdateEvent {}

class SetAvatarEvent extends AvatarWidgetForUpdateEvent {
  final String url;
  final Function function;

  SetAvatarEvent({
    required this.url,
    required this.function,
  });
}
