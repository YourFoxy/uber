import 'package:uber/scripts/index.dart';

class TextFieldWidget extends StatelessWidget {
  final bool isNumber;
  final String hintText;
  final TextEditingController controller;
  final Color borderColor;
  final Color textColor;
  final double height;
  final double width;
  final Key? textKey;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.borderColor = AppColors.plum,
    this.isNumber = false,
    this.textColor = AppColors.orange,
    this.height = 75.0,
    this.width = 300,
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
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            width: 2,
            color: borderColor,
          ),
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
