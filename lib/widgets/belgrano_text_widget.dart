import 'package:uber/scripts/index.dart';

class BelgranoText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const BelgranoText({
    Key? key,
    this.size = 15.0,
    required this.text,
    this.color = AppColors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: belgranoFont,
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
