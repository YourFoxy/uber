import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uber/pages/login_or_register.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/app_text.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.plum2,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.plum),
            child: AppTextStyle(
              text: '',
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: Row(
                children: [Icon(Icons.ac_unit)],
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            color: AppColors.orange,
          ),
          InkWell(
            hoverColor: AppColors.orange,
            onTap: () async {
              try {
                await FirebaseAuth.instance.signOut().then((value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginOrRegister()));
                });
              } catch (e) {}
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.exit_to_app,
                    color: AppColors.orange,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: AppLargeText(
                      text: 'Exit',
                      size: 25,
                      color: AppColors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
