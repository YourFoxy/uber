import 'package:uber/scripts/index.dart';

class ToastWidget extends StatelessWidget {
  final String text;

  const ToastWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.redAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.error,
            color: Colors.white,
          ),
          const SizedBox(
            width: 12.0,
          ),
          SizedBox(
            width: 220,
            child: AppTextStyle(
              text: text,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
