import 'package:uber/scripts/index.dart';

class Auth {
  static final FirebaseAuth fAuth = FirebaseAuth.instance;
  static final FirebaseFirestore fbd = FirebaseFirestore.instance;
  static final FirebaseStorage fStorage = FirebaseStorage.instance;
  static late String _verificationID;

  static Future<void> signIn(String phoneNumber) {
    return fAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) async {
        _verificationID = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  static void verificationID(
    String smsCode,
    BuildContext context,
    String phoneNumber,
    final NavigationService navigationService,
  ) async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
      verificationId: _verificationID,
      smsCode: smsCode,
    );
    late bool _isRegister;

    try {
      await fAuth.signInWithCredential(phoneAuthCredential).then(
        (value) {
          _isRegister = value.additionalUserInfo!.isNewUser;
        },
      );
      if (_isRegister) {
        UserData.addCurrentUserInformation(phoneNumber);
        navigationService.navigatorToRegisterUserInformationPage(
            phoneNumber: phoneNumber);
      } else {
        navigationService.navigatorToHomePage();
      }
    } catch (e) {
      GetIt.instance.get<ToastService>().showGeneralErrorToast(incorrectCode);
    }
  }
}
