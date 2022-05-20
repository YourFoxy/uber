// import 'package:flutter/material.dart';
// import 'package:uber/scripts/const.dart';

import 'package:uber/scripts/index.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppLargeText(
      {Key? key,
      this.size = 30.0,
      required this.text,
      this.color = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: font,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
