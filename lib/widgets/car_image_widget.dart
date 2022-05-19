// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:uber/scripts/const.dart';

import 'package:uber/scripts/index.dart';

class Car extends StatelessWidget {
  const Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage(carUrl);
    Image car = Image(image: assetImage);
    return Container(
      margin: const EdgeInsets.only(top: 150),
      height: 190,
      width: 190,
      child: car,
    );
  }
}
