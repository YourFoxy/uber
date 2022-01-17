abstract class AvatarWidgetEvent {}

class SetAvatarEvent extends AvatarWidgetEvent {
  final String url;

  SetAvatarEvent({required this.url});
}
