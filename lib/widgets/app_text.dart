import 'package:flutter/material.dart';

class AppTextStyle extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppTextStyle(
      {Key? key,
      this.size = 16.0,
      required this.text,
      this.color = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'BebasNeue',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400),
    );
  }
}
