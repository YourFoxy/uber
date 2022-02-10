import 'package:flutter/material.dart';
import 'package:uber/style/colors.dart';

import 'app_text.dart';

class PlaceForCardWidget extends StatelessWidget {
  final String text;

  const PlaceForCardWidget({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            alignment: Alignment.centerLeft,
            child: AppTextStyle(
              text: text,
              size: 18,
            ),
          ),
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.plum2,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
