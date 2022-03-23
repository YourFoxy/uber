part of 'editable_rectangular_avatar_bloc.dart';

@freezed
class EditableRectangularAvatarEvent with _$EditableRectangularAvatarEvent {
  const factory EditableRectangularAvatarEvent.uploadAvatar() =
      UploadAvatarEvent;
  const factory EditableRectangularAvatarEvent.setAvatar(
      {required String url}) = SetAvatarEvent;
}
