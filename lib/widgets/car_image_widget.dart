import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uber/style/colors.dart';

class Car extends StatelessWidget {
  Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/picture/car.png');
    Image car = Image(image: assetImage);
    return Container(
      margin: EdgeInsets.only(top: 150),
      height: 190,
      width: 190,
      child: car,
    );
  }
}
