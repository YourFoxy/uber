part of 'editable_rectangular_avatar_bloc.dart';

@freezed
class EditableRectangularAvatarState with _$EditableRectangularAvatarState {
  const factory EditableRectangularAvatarState.widgetInit() = WidgetInitState;
  const factory EditableRectangularAvatarState.uploadAvatar(
      {required String url}) = UploadAvatarState;
  const factory EditableRectangularAvatarState.pickImage(
      {required String url}) = PickImageState;
}
