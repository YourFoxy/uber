import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uber/pages/register_user_information_page.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/pages/register_user_information_page.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/scripts/widgets.dart';
import 'package:uber/widgets/toast_widget.dart';

class Auth {
  static final fAuth = FirebaseAuth.instance;
  static final fbd = FirebaseFirestore.instance;
  static late String _verificationID;
  static Future<void> SignIn(String phoneNumber) {
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

  static void VerificationID(String smsCode, bool isRegister,
      BuildContext context, String phoneNumber) async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _verificationID, smsCode: smsCode);

    try {
      await fAuth.signInWithCredential(phoneAuthCredential).then(
        (value) {
          if (isRegister) {
            UserData.AddCurrentUserInformation(phoneNumber);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterUserUnformationPage(
                  phoneNumber: phoneNumber,
                ),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
        },
      );
    } catch (e) {
      Widgets.Toast("Incorrect code");
    }
  }

  // static Future<void> initialInformation(String phoneNumber) {
  //   return fbd.collection('Users').doc(phoneNumber).set({'nickname': 'User'});
  // }

  // Future<void> updateInformation(
  //     String phoneNumber, String userNickname) async {
  //   return await fbd.collection('Users').doc(phoneNumber).update({
  //     'Nickname': userNickname,
  //   });
  // }

  // static Future<bool> DoesDatabaseContainNumber(String phoneNumber) async {
  //   bool _isNumber = false;
  //   await fbd.collection('Users').get().then((snapshot) {
  //     snapshot.docs.forEach((element) {
  //       element.id == phoneNumber ? _isNumber = true : null;
  //     });
  //   });
  //   return _isNumber;
  // }
}
