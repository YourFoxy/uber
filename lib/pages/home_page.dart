import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uber/domain/auth.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/avatar_widget_for_view.dart';
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
      drawer: DrawerMenu(),
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
              const PlaceForCardWidget(
                text: 'Save',
              ),
              const PlaceForCardWidget(
                text: 'My',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.dark,
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          color: AppColors.orange,
        ),
      ),
    );
  }

  Widget _buildNicknameAndCity() {
    return FutureBuilder<DocumentSnapshot>(
      future: Auth.fbd
          .collection(collectionNameWithUsers)
          .doc(UserData.currentUserPhoneNumber)
          .get(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const AppLargeText(text: '');
        } else {
          return AppLargeText(
              color: AppColors.orange,
              text:
                  '${snapshot.data![nicknameFieldInCollection]}, \n${snapshot.data![cityFieldInCollection]}');
        }
      },
    );
  }

  Widget _buildHead() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.dark,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 120,
                margin: const EdgeInsets.only(
                  left: 15,
                  bottom: 40,
                ),
                child: _buildNicknameAndCity(),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  bottom: 40,
                ),
                child: AppLargeText(
                  text: UserData.currentUserPhoneNumber,
                  color: AppColors.orange,
                  size: 25,
                ),
              ),
            ],
          ),
          const AvatarWidgetForView(),
        ],
      ),
    );
  }
}
