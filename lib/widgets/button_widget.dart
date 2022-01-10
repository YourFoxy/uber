import 'package:flutter/material.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_text.dart';

import 'app_large_text.dart';

class ButtonWidget extends StatefulWidget {
  String text;
  final Function onTap;
  final Color buttonColor;
  final Color textColor;
  ButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      this.buttonColor = AppColors.orange,
      this.textColor = AppColors.plum})
      : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState(
      text: text, onTap: onTap, buttonColor: buttonColor, textColor: textColor);
}

class _ButtonWidgetState extends State<ButtonWidget> {
  String text;
  final Function onTap;
  final Color buttonColor;
  final Color textColor;

  _ButtonWidgetState(
      {required this.text,
      required this.onTap,
      required this.buttonColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: onTap(),
        child: Container(
          height: 75.0,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: buttonColor,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 12),
                blurRadius: 15,
                spreadRadius: -13,
                color: AppColors.plum,
              ),
            ],
          ),
          child: Center(
            child: AppLargeText(
              text: text,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
