// import 'package:flutter/material.dart';
// import 'package:uber/scripts/const.dart';
// import 'package:uber/style/colors.dart';

import 'package:uber/scripts/index.dart';

class AppTextStyle extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppTextStyle(
      {Key? key,
      this.size = 16.0,
      required this.text,
      this.color = AppColors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: font,
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400),
    );
  }
}
