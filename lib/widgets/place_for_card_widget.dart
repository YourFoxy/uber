import 'package:flutter/material.dart';
import 'package:uber/style/colors.dart';

class PlaceForCardWidget extends StatelessWidget {
  const PlaceForCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.plum2, borderRadius: BorderRadius.circular(30)),
    );
  }
}
