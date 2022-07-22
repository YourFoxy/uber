import 'package:uber/scripts/index.dart';

class Car extends StatelessWidget {
  const Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage(mapUrl);
    Image map = Image(image: assetImage);
    return Container(
      margin: const EdgeInsets.only(top: 150),
      height: 170,
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: const [
          BoxShadow(
            offset: Offset(25, 24),
            blurRadius: 50,
            spreadRadius: -50,
            // color: AppColors.textColor,
          ),
        ],
      ),
      child: map,
    );
  }
}
