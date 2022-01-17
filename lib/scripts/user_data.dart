import 'dart:io';
import 'package:uber/domain/auth.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/text.dart';

class UserData {
  static final String currentUserPhoneNumber =
      AppText.convertNumber('${Auth.fAuth.currentUser!.phoneNumber}');

  static void addCurrentUserInformation(String phoneNumber) async {
    await Auth.fbd
        .collection(collectionNameWithUsers)
        .doc(phoneNumber)
        .set({'Nickname': 'User', 'City': '-'});
  }

  static Future<void> updateCurrentUserInformation(
    String phoneNumber,
    String nickname,
    String city,
  ) async {
    await Auth.fbd.collection(collectionNameWithUsers).doc(phoneNumber).update({
      'Nickname': AppText.upperFirstLetterAndDeleteExtraSpaces(nickname),
      'City': AppText.upperFirstLetterAndDeleteExtraSpaces(city),
    });
  }

  static Future<bool> checkPhoneNumberInDatabase(String phoneNumber) async {
    bool _phoneNumberExists = false;
    await Auth.fbd.collection(collectionNameWithUsers).get().then(
      (snapshot) {
        for (var element in snapshot.docs) {
          if (element.id == phoneNumber) {
            _phoneNumberExists = true;
          }
        }
      },
    );
    return _phoneNumberExists;
  }

  static void saveCurrentUserPhoto(
    String pickImageUrl,
    String phoneNumber,
  ) async {
    await Auth.fStorage
        .ref()
        .child('/avatars/$phoneNumber')
        .putFile(File(pickImageUrl));
  }
}
