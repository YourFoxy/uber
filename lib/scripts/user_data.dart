import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/scripts/text.dart';

class UserData {
  static final fStorage = FirebaseStorage.instance;
  static void AddCurrentUserInformation(String phoneNumber) async {
    await Auth.fbd
        .collection('Users')
        .doc(phoneNumber)
        .set({'Nickname': 'User', 'City': '-'});
  }

  static Future<void> UpdateCurrentUserInformation(
      String phoneNumber, String nickname, String city) async {
    await Auth.fbd.collection('Users').doc(phoneNumber).update({
      'Nickname': UpdateAppText.MakeTextCorrect(nickname),
      'City': UpdateAppText.MakeTextCorrect(city),
    });
  }

  static Future<bool> CheckPhoneNumberInDatabase(String phoneNumber) async {
    bool _phoneNumberExists = false;
    await Auth.fbd.collection('Users').get().then(
      (snapshot) {
        snapshot.docs.forEach(
          (element) {
            if (element.id == phoneNumber) {
              _phoneNumberExists = true;
            }
          },
        );
      },
    );
    return _phoneNumberExists;
  }

  static void SaveCurrentUserPhoto(
      String pickImageUrl, String phoneNumber) async {
    await fStorage
        .ref()
        .child('/avatars/$phoneNumber')
        .putFile(File(pickImageUrl));
  }
}
