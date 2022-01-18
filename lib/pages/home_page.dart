import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/text.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/app_text.dart';
import 'package:uber/widgets/avatar_widget.dart';
import 'package:uber/widgets/drawer_widget.dart';
import 'package:uber/widgets/place_for_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pickImageUrl = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.plum,
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: AppColors.plum,
        iconTheme: const IconThemeData(color: AppColors.orange),
        title: const AppLargeText(
          text: '',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              _buildHead(),
              const PlaceForCardWidget(),
              const PlaceForCardWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHead() {
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppLargeText(
            text: UserData.currentUserPhoneNumber,
            color: AppColors.orange,
          ),
        ],
      ),
    );
  }
}
