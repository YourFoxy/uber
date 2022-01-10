import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uber/scripts/input.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_text.dart';

class TextFieldWidget extends StatelessWidget {
  bool isNumber;
  final hintText;
  TextEditingController controller;
  TextFieldWidget(
      {Key? key,
      required this.hintText,
      this.isNumber = false,
      required this.controller})
      : super(key: key);

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
          color: AppColors.plum,
        ),
        child: TextField(
          textAlign: TextAlign.center,
          cursorColor: AppColors.orange,
          maxLength: 19,
          // maxLengthEnforced: false,
          controller: controller,
          keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
          inputFormatters: isNumber
              ? [
                  //FilteringTextInputFormatter.allow(RegExp('[+  0-9]')),
                  WhitelistingTextInputFormatter.digitsOnly,
                  NumberTextInputFormatter(),
                ]
              : [
                  // FilteringTextInputFormatter.allow(RegExp(r'[^  ]')),
                  FilteringTextInputFormatter.singleLineFormatter,
                  RemoveAllExtraSpacesTextFormatter(),
                ],
          style: const TextStyle(
            color: AppColors.orange,
            fontSize: 30.0,
            fontFamily: 'BebasNeue',
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                color: AppColors.orange,
                fontSize: 25.0,
                fontFamily: 'BebasNeue'),
            border: InputBorder.none,
            counterText: '',
          ),
        ),
      ),
    );
  }
}
