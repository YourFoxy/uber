import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:uber/style/colors.dart';

class TextFieldForCodeWidget extends StatelessWidget {
  final TextEditingController smsCodeController;
  TextFieldForCodeWidget({Key? key, required this.smsCodeController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: PinCodeTextField(
        controller: smsCodeController,

        appContext: context,
        length: 6,
        // showCursor: false,
        //animationCurve: Curves.,
        animationType: AnimationType.none,
        animationDuration: Duration(microseconds: 0),
        // anima
        enableActiveFill: true,
        onChanged: (value) {},
        //backgroundColor: AppColors.black,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15.0),
          fieldHeight: 70,
          fieldWidth: 45,
          activeColor: AppColors.plum,
          // disabledColor: AppColors.black,
          activeFillColor: AppColors.plum,
          inactiveColor: AppColors.plum,
          selectedColor: AppColors.plum,

          selectedFillColor: AppColors.plum,

          inactiveFillColor: AppColors.plum,
        ),
        cursorColor: AppColors.orange,

        textStyle: const TextStyle(
          color: AppColors.orange,
          fontFamily: 'BebasNeue',
          fontSize: 30,
        ),
        keyboardType: TextInputType.phone,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}