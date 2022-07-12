import 'package:uber/scripts/index.dart';

abstract class RegisterUserInformationEvent {}

class AddUserInformationEvent extends RegisterUserInformationEvent {
  final String city;
  final String nickname;
  final String pickImageUrl;
  final String phoneNumber;
  final BuildContext context;

  AddUserInformationEvent({
    required this.city,
    required this.nickname,
    required this.pickImageUrl,
    required this.phoneNumber,
    required this.context,
  });
}
