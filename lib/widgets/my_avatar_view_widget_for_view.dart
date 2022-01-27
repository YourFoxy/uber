import 'dart:io';

import 'package:flutter/material.dart';
import 'package:uber/scripts/const.dart';

class MyAvatarViewForView extends StatelessWidget {
  final String? imageUrlFromStorage;
  final double radius;

  const MyAvatarViewForView({
    Key? key,
    required this.imageUrlFromStorage,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: imageUrlFromStorage == ''
            ? const DecorationImage(
                image: AssetImage(carUrl),
                fit: BoxFit.cover,
              )
            : DecorationImage(
                image: NetworkImage(
                  imageUrlFromStorage!,
                ),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
