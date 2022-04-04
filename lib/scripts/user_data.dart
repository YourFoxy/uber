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
    String nickname,
    String city,
    String pickImageUrl,
  ) async {
    await Auth.fbd
        .collection(collectionNameWithUsers)
        .doc(currentUserPhoneNumber)
        .update(
      {
        'Nickname': AppText.upperFirstLetterAndDeleteExtraSpaces(nickname),
        'City': AppText.upperFirstLetterAndDeleteExtraSpaces(city),
      },
    );
    await saveCurrentUserPhoto(pickImageUrl, currentUserPhoneNumber);
  }

  static Future<String> getUrlImapeFromStorage() async {
    return await Auth.fStorage
        .ref('avatars/${UserData.currentUserPhoneNumber}')
        .getDownloadURL();
  }

  static Future<String> getFieldValueFromDatabase(String fieldName) async {
    final snapshot = await Auth.fbd
        .collection(collectionNameWithUsers)
        .doc(UserData.currentUserPhoneNumber)
        .get();
    return snapshot[fieldName];
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

  static Future<void> saveCurrentUserPhoto(
    String pickImageUrl,
    String phoneNumber,
  ) async {
    await Auth.fStorage
        .ref()
        .child('/avatars/$phoneNumber')
        .putFile(File(pickImageUrl));
  }
}
