import 'package:uber/scripts/index.dart';

class LocationTextFieldWidget extends StatefulWidget {
  final bool isNumber;
  final String hintText;
  final TextEditingController controller;
  final Color borderColor;
  final Color textColor;
  final Function onTap;

  const LocationTextFieldWidget({
    required this.hintText,
    required this.controller,
    required this.onTap,
    Key? key,
    this.isNumber = false,
    this.borderColor = AppColors.plum,
    this.textColor = AppColors.orange,
  }) : super(key: key);

  @override
  State<LocationTextFieldWidget> createState() =>
      _LocationTextFieldWidgetState();
}

class _LocationTextFieldWidgetState extends State<LocationTextFieldWidget> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() => widget.onTap());
  }

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
          //color: widget.backgroundColor,
          border: Border.all(
            width: 2,
            color: widget.borderColor,
          ),
        ),
        child: TextField(
          focusNode: focusNode,
          textAlign: TextAlign.center,
          cursorColor: widget.textColor,
          maxLength: 19,
          controller: widget.controller,
          keyboardType:
              widget.isNumber ? TextInputType.phone : TextInputType.text,
          inputFormatters: widget.isNumber
              ? [
                  FilteringTextInputFormatter.digitsOnly,
                  NumberTextInputFormatter(),
                ]
              : [
                  FilteringTextInputFormatter.singleLineFormatter,
                  RemoveAllExtraSpacesTextFormatter(),
                ],
          style: TextStyle(
            color: widget.textColor,
            fontSize: 30.0,
            fontFamily: font,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: widget.textColor,
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
