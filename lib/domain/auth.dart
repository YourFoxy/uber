import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/service/navigation_service.dart';
import 'package:uber/service/toast_service.dart';

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
    NavigationService navigationService,
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
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => RegisterUserInformationPage(
        //       phoneNumber: phoneNumber,
        //     ).createWithProvider<RegisterUserInformationBloc>(),
        //   ),
        //);
      } else {
        navigationService.navigatorToHomePage();
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) =>
        //         const HomePage().createWithProvider<HomeBloc>(),
        //   ),
        // );
      }
    } catch (e) {
      GetIt.instance.get<ToastService>().showGeneralErrorToast(incorrectCode);
    }
  }
}
