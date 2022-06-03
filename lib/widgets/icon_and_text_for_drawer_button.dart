import 'package:uber/scripts/index.dart';

class IconAndTextForDrawerButton extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconAndTextForDrawerButton(
      {Key? key, required this.iconData, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: AppColors.orange,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: AppLargeText(
              text: text,
              size: 25,
              color: AppColors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
