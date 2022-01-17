import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uber/pages/register_user_information_page.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/scripts/widgets.dart';

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
    bool isRegister,
    BuildContext context,
    String phoneNumber,
  ) async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
      verificationId: _verificationID,
      smsCode: smsCode,
    );

    try {
      await fAuth.signInWithCredential(phoneAuthCredential).then(
        (value) {
          if (isRegister) {
            UserData.addCurrentUserInformation(phoneNumber);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterUserInformationPage(
                  phoneNumber: phoneNumber,
                ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }
        },
      );
    } catch (e) {
      Widgets.toast("Incorrect code");
    }
  }
}
