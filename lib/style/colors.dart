import 'package:uber/scripts/index.dart';

class AppColors {
  static const Color plum = Color(0xFF3E3D41);
  static const Color plum2 = Color(0xFF515053);
  static const Color dark = Color(0xFF2F2E31);
  static const Color orange = Color(0xFFFFB55E);
  static const Color light = Color(0xFFCDD2CB);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFFF715E);

  static const Color buttonColor = Color(0xFFD2DDFF);
  static const Color textColor = Color(0xFF363E4D);
  static const Color inactiveWidgetColor = Color(0xFFD0D0D0);
  static const Color inactiveTextColor = Color(0xFF6F747C);
  static const LinearGradient backgroundColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xffF6EFF4),
      Color(0xffEDF0F8),
      Color(0xffEDF0F8),
      // Color(0xff870160),
      // Color(0xffac255e),
      // Color(0xffca485c),
      // Color(0xffe16b5c),
      // Color(0xfff39060),
      // Color(0xffffb56b),
    ], // Gradient from https://learnui.design/tools/gradient-generator.html
    //tileMode: TileMode.mirror,
  );
}
