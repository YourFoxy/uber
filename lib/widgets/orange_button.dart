import 'package:uber/scripts/index.dart';

class OrangeButtonWidget extends StatefulWidget {
  final String textButton;
  const OrangeButtonWidget({
    Key? key,
    required this.textButton,
  }) : super(key: key);

  @override
  State<OrangeButtonWidget> createState() => _OrangeButtonWidgetState();
}

class _OrangeButtonWidgetState extends State<OrangeButtonWidget> {
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
          color: AppColors.orange,
        ),
        child: Center(
          child: AppTextStyle(
            text: widget.textButton,
            size: 30,
            color: AppColors.dark,
          ),
        ),
      ),
    );
  }
}
