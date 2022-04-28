// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/input.dart';
import 'package:uber/style/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final bool isNumber;
  final String hintText;
  final TextEditingController controller;
  final Color backgroundColor;
  final Color textColor;
  final Key? textKey;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.backgroundColor = AppColors.plum,
    this.isNumber = false,
    this.textColor = AppColors.orange,
    // this.textKey;
    this.textKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        height: 75.0,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: backgroundColor,
        ),
        child: TextField(
          key: textKey,
          textAlign: TextAlign.center,
          cursorColor: textColor,
          maxLength: 19,
          controller: controller,
          keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
          inputFormatters: isNumber
              ? [
                FilteringTextInputFormatter.digitsOnly,
                 // WhitelistingTextInputFormatter.digitsOnly,
                  NumberTextInputFormatter(),
                ]
              : [
                  FilteringTextInputFormatter.singleLineFormatter,
                  RemoveAllExtraSpacesTextFormatter(),
                ],
          style: TextStyle(
            color: textColor,
            fontSize: 30.0,
            fontFamily: font,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: textColor,
              fontSize: 25.0,
              fontFamily: font,
            ),
            border: InputBorder.none,
            counterText: '',
          ),
        ),
      ),
    );
  }
}
