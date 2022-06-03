import 'package:uber/scripts/index.dart';

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

  static Future<List<Map<String, String>>> getUserRoutesFromDatabase(
      String nameCollection) async {
    List<Map<String, String>> routesAndDates = [];
    await Auth.fbd
        .collection(collectionNameWithRoutes)
        .doc(currentUserPhoneNumber)
        .collection(nameCollection)
        .get()
        .then(
      (value) {
        for (var element in value.docs) {
          routesAndDates.add({
            routeFieldInMap:
                '${element[routeFieldInCollection][0]} -> ${element[routeFieldInCollection][1]}',
            dateFieldInMap: element[dateFieldInCollection],
            routeId: element.id,
          });
        }
      },
    );
    return routesAndDates;
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
