import 'package:uber/scripts/index.dart';

class Avatar {
  static Future<String> pickImage() async {
    final XFile? _picker = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    return _picker!.path;
  }
}
