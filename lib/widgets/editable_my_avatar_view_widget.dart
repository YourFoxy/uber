import 'dart:io';

import 'package:flutter/material.dart';
import 'package:uber/scripts/const.dart';

class EditableMyAvatarView extends StatelessWidget {
  final String? pickImageUrl;
  final double radius;

  const EditableMyAvatarView({
    Key? key,
    required this.pickImageUrl,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: pickImageUrl == ''
            ? const DecorationImage(
                image: AssetImage(carUrl),
                fit: BoxFit.cover,
              )
            : DecorationImage(
                image: FileImage(
                  File(
                    pickImageUrl!,
                  ),
                ),
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
