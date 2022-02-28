import 'package:flutter/material.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';

class LongSaveButtonWidget extends StatefulWidget {
  final Function function;
  final Color color;
  const LongSaveButtonWidget({
    Key? key,
    required this.function,
    this.color = AppColors.dark,
  }) : super(key: key);

  @override
  State<LongSaveButtonWidget> createState() => _LongSaveButtonWidgetState();
}

class _LongSaveButtonWidgetState extends State<LongSaveButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        width: double.infinity,
        color: widget.color,
        child: InkWell(
          splashColor: Colors.amber,
          onTap: () {
            widget.function();
          },
          child: const Center(
            child: AppLargeText(
              text: 'Save',
              color: AppColors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
