import 'package:uber/scripts/index.dart';

class RR extends StatefulWidget {
  const RR({Key? key}) : super(key: key);

  @override
  State<RR> createState() => _RRState();
}

class _RRState extends State<RR> {
  Offset localPosition = Offset(0.0, 0.0);
  double? primaryVelocity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 400,
          color: AppColors.buttonColor,
          child: GestureDetector(
            // onHorizontalDragCancel: () {
            //   print('rrrrrrrrrrrr');
            // },
            onHorizontalDragEnd: (DragEndDetails details) {
              // print('22222222  ${details.primaryVelocity}');
              primaryVelocity = details.primaryVelocity;
              if (localPosition.dx >= 0.0 && localPosition.dx <= 200.0) {
                localPosition = Offset(0.0, 0.0);
              } else if (localPosition.dx >= 200.0 &&
                  localPosition.dx <= 320.0) {
                localPosition = Offset(320.0, 0.0);
              }
              //localPosition = Offset(details.primaryVelocity! / 10.0, 0.0);
              setState(() {});
            },
            onHorizontalDragUpdate: (DragUpdateDetails t) {
              //t.localPosition
              print('${t.delta}');
              if (t.localPosition.dx >= 0.0 && t.localPosition.dx <= 320.0) {
                //   {
                //     if (localPosition.dx < t.localPosition.dx) {
                //       print('${localPosition.dx} - ${t.localPosition.dx}');

                //       localPosition = t.localPosition;
                //       setState(() {});
                // if (t.localPosition.dx >= 200.0 &&
                //     t.localPosition.dx <= 320.0) {
                //   localPosition = Offset(320.0, 0.0);
                // } else {
                localPosition = Offset(t.localPosition.dx, 0.0);
                // }
                // if (t.localPosition.dx >= 0.0 && t.localPosition.dx <= 200.0) {
                //   localPosition = Offset(0.0, 0.0);
                // }
                //   }
                // }
                // if (t.localPosition.dx <= 200.0 && t.localPosition.dx >= 0.0) {
                //   localPosition = Offset(0.0, 0.0);
                // }
              }
              setState(() {});
            },
            // onHorizontalDragStart: (DragStartDetails details) {
            //   print('sssssssssssssssssssssssssss');
            // },
          ),
        ),
        Positioned(
          // left: 20,
          left: localPosition.dx,
          height: 30,
          width: 80,
          child: Container(
            color: AppColors.dark,
          ),
        ),
      ],
    );
  }
}
