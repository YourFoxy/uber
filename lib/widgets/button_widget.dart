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
          height: 50.0,
          width: 220.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: AppColors.buttonColor,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 15,
                spreadRadius: -13,
                // color: AppColors.textColor,
              ),
            ],
          ),
          child: Center(
            child: AppLargeText(
              text: text,
              color: AppColors.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
