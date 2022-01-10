import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class Avatar {
  static Future<String> pickImage() async {
    //XFile? _picker = await ImagePicker().pickImage(source: ImageSource.gallery);
    final _picker = await ImagePicker().pickImage(source: ImageSource.gallery);
    print('...............${_picker!.path}');
    return _picker.path;
  }

  // static Future<File> getImageFileFromAssets(String path) async {
  //   final byteData = await rootBundle.load('$path');

  //   final file = File('${(await getTemporaryDirectory()).path}/$path');
  //   await file.writeAsBytes(byteData.buffer
  //       .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  //   return file;
  // }

}
