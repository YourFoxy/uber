part of 'editable_rectangular_avatar_bloc.dart';

@freezed
class EditableRectangularAvatarState with _$EditableRectangularAvatarState {
  const factory EditableRectangularAvatarState.widgetInit() = WidgetRectangularAvatarInitState;
  const factory EditableRectangularAvatarState.uploadAvatar(
      {required String url}) = UploadRectangularAvatarState;
  const factory EditableRectangularAvatarState.pickImage(
      {required String url}) = PickRectangularAvatarImageState;
}
