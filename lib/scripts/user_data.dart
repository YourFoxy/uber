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

  static Future<String> getUrlImageFromStorage() async {
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
    final routesAndDates = <Map<String, String>>[];
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
                '${element[routeFieldInCollection][fromRouteIndex]} -> ${element[routeFieldInCollection][toRouteIndex]}',
            dateFieldInMap: element[dateFieldInCollection],
            routeId: element.id,
          });
        }
      },
    );
    return routesAndDates;
  }

  static Future<List<String>> getUserPhones() async {
    final userPhones = <String>[];

    await Auth.fbd.collection('Routes').get().then(
      (value) {
        for (var element in value.docs) {
          userPhones.add(element.id);
        }
      },
    );
    print(userPhones);
    return userPhones;
  }

  static Future<List<Map<String, String>>> getRoutesWithParameters(
      {String fromSearchRoute = '', String toSearchRoute = ''}) async {
    final routesAndDates = <Map<String, String>>[];
    final userPhones = await getUserPhones();

    print('xxxxxxxxxxxx ${fromRoute}');
    for (int i = 0; i < userPhones.length; i++) {
      await Auth.fbd
          .collection(collectionNameWithRoutes)
          .doc(userPhones[i])
          .collection(collectionNameWithRoutes)
          .get()
          .then(
        (value) {
          for (var elem in value.docs.where((element) =>
              element[routeFieldInCollection][fromRouteIndex] ==
                  fromSearchRoute &&
              element[routeFieldInCollection][toRouteIndex] == toSearchRoute)) {
            routesAndDates.add(
              {
                fromRoute: '${elem[routeFieldInCollection][fromRouteIndex]}',
                toRoute: '${elem[routeFieldInCollection][toRouteIndex]}',
                dateFieldInMap: elem[dateFieldInCollection],
                phoneNubmer: userPhones[i],
              },
            );
          }
        },
      );
    }
    // print('ccccccccccc ${routesAndDates[0][fromRoute]}');

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
