import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uber/scripts/image.dart';
import 'package:uber/style/colors.dart';
import 'package:avatar_view/avatar_view.dart';
import 'package:uber/widgets/my_avatar_view_widget.dart';

class AvatarWidget extends StatefulWidget {
  String pickImageUrl;
  Function(String) function;
  Color backgroundColor;
  AvatarWidget({
    Key? key,
    required this.pickImageUrl,
    required this.function,
    this.backgroundColor = AppColors.plum,
  }) : super(key: key);

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState(
      pickImageUrl: pickImageUrl,
      function: function,
      backgroundColor: backgroundColor);
}

class _AvatarWidgetState extends State<AvatarWidget> {
  String? pickImageUrl;
  Color backgroundColor;
  Function(String) function;
  _AvatarWidgetState(
      {required this.pickImageUrl,
      required this.function,
      required this.backgroundColor});
  String url = 'assets/picture/car.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundColor: backgroundColor,
          ),
          InkWell(
            onTap: () async {
              pickImageUrl = await Avatar.pickImage();
              function(pickImageUrl!);
              setState(() {});
            },
            child: MyAvatarView(
              pickImageUrl: pickImageUrl,
              radius: 75,
            ),
          ),
        ],
      ),
    );
  }
}
