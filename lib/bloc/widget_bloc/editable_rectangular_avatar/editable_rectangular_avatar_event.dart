part of 'editable_rectangular_avatar_bloc.dart';

@freezed
class EditableRectangularAvatarEvent with _$EditableRectangularAvatarEvent {
  const factory EditableRectangularAvatarEvent.uploadAvatar() =
      UploadRectangularAvatarEvent;
  const factory EditableRectangularAvatarEvent.setAvatar(
      {required String url}) = SetRectangularAvatarEvent;
}
