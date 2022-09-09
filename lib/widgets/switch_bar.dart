import 'package:uber/widgets/route_list.dart';

import '../scripts/index.dart';

class SwitchBar extends StatefulWidget {
  const SwitchBar({Key? key}) : super(key: key);

  @override
  State<SwitchBar> createState() => _SwitchBarState();
}

class _SwitchBarState extends State<SwitchBar> {
  Offset localPosition = Offset(0.0, 0.0);
  double? primaryVelocity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        width: 280,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(45),
              height: 40,
              width: 280,
              decoration: BoxDecoration(
                color: AppColors.inactiveWidgetColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  BelgranoText(
                    text: 'SAVED ROUTES',
                    color: AppColors.inactiveTextColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  BelgranoText(
                    text: 'MY ROUTES',
                    color: AppColors.inactiveTextColor,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(45),
              height: 40,
              width: 155,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 20,
                    spreadRadius: -15,
                    // color: AppColors.textColor,
                  ),
                ],
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const BelgranoText(
                text: 'SAVED ROUTES',
                color: AppColors.textColor,
              ),
            ),
            Container(
              height: 40,
              width: 280,
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

                  setState(() {});
                },
                onHorizontalDragUpdate: (DragUpdateDetails t) {
                  print('${t.delta}');
                  if (t.localPosition.dx >= 0.0 &&
                      t.localPosition.dx <= 320.0) {
                    localPosition = Offset(t.localPosition.dx, 0.0);
                  }
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
