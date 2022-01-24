import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/picture/car.png');
    Image car = Image(image: assetImage);
    return Container(
      margin: const EdgeInsets.only(top: 150),
      height: 190,
      width: 190,
      child: car,
    );
  }
}
