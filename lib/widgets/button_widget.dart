// import 'package:flutter/material.dart';
// import 'package:uber/style/colors.dart';
// import 'app_large_text.dart';
import 'package:uber/scripts/index.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color buttonColor;
  final Color textColor;

  const ButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      this.buttonColor = AppColors.orange,
      this.textColor = AppColors.plum})
      : super(key: key);

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
