import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:uber/scripts/image.dart';
import 'package:uber/scripts/text.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/app_text.dart';
import 'package:uber/widgets/avatar_widget.dart';
import 'package:uber/widgets/drawer_widget.dart';
import 'package:uber/widgets/place_for_card_widget.dart';
import 'package:uber/widgets/text_field_widget.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pickImageUrl = '';
  final String _currentUserNumber = UpdateAppText.ConvertNumber(
      '${FirebaseAuth.instance.currentUser!.phoneNumber}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.plum,
      drawer: DrawerMenu(),
      appBar: AppBar(
        backgroundColor: AppColors.plum,
        iconTheme: IconThemeData(color: AppColors.orange),
        title: AppLargeText(
          text: '',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              _head(),
              PlaceForCardWidget(),
              PlaceForCardWidget(),
              AvatarWidget(
                function: (String url) async {
                  setState(() {
                    pickImageUrl = url;
                  });
                },
                pickImageUrl: pickImageUrl,
              ),
              AppLargeText(
                text: UpdateAppText.ConvertNumber(
                    '${FirebaseAuth.instance.currentUser!.phoneNumber}'),
                color: AppColors.orange,
                size: 30.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              InkWell(
                splashColor: Colors.black12,
                highlightColor: Colors.black12,
                onTap: _exit,
                child: AppText(
                  text: 'Exit',
                  color: AppColors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _head() {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.dark,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _avatar(),
          _buildNicknameAndCity(context),
          _number(),
        ],
      ),
    );
  }

  Widget _avatar() {
    return AvatarWidget(
      function: (String url) async {
        setState(() {
          pickImageUrl = url;
        });
      },
      pickImageUrl: pickImageUrl,
      backgroundColor: AppColors.orange,
    );
  }

  Widget _number() {
    return AppLargeText(
      text: _currentUserNumber,
      color: AppColors.orange,
    );
  }

  Widget _buildNicknameAndCity(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance
            .collection('Users')
            .doc(_currentUserNumber)
            .get(),
        builder: (context, snapshot) {
          var _userNickname = snapshot.data;
          return AppLargeText(
            text: '${_userNickname!['Nickname']}, ${_userNickname['City']}',
            color: AppColors.orange,
          );
        });
  }

  void _exit() async {
    try {
      await FirebaseStorage.instance
          .ref()
          .child('/avatars/{FirebaseAuth.instance.currentUser!.phoneNumber}')
          .putFile(File(pickImageUrl));
    } catch (e) {
      print('///${e}');
    }
  }
}
