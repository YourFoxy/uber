// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:uber/scripts/const.dart';
// import 'package:uber/style/colors.dart';
import 'package:uber/scripts/index.dart';

class TextFieldForCodeWidget extends StatelessWidget {
  final TextEditingController smsCodeController;

  const TextFieldForCodeWidget({
    Key? key,
    required this.smsCodeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: PinCodeTextField(
        controller: smsCodeController,
        appContext: context,
        length: 6,
        animationType: AnimationType.none,
        animationDuration: const Duration(microseconds: 0),
        enableActiveFill: true,
        onChanged: (value) {},
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15.0),
          fieldHeight: 70,
          fieldWidth: 45,
          activeColor: AppColors.orange,
          activeFillColor: AppColors.orange,
          inactiveColor: AppColors.orange,
          selectedColor: AppColors.orange,
          selectedFillColor: AppColors.orange,
          inactiveFillColor: AppColors.orange,
        ),
        cursorColor: AppColors.plum,
        textStyle: const TextStyle(
          color: AppColors.plum,
          fontFamily: font,
          fontSize: 30,
        ),
        keyboardType: TextInputType.phone,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}
