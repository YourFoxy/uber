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
        // height: 40,
        //width: 280,
        child: Stack(
          children: [
            Container(
              //margin: const EdgeInsets.all(45),
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: AppColors.inactiveWidgetColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: BelgranoText(
                        text: 'SAVED ROUTES',
                        color: AppColors.inactiveTextColor,
                      ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Expanded(
                      flex: 2,
                      child: BelgranoText(
                        text: 'MY ROUTES',
                        color: AppColors.inactiveTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // left: 20,
              left: localPosition.dx,
              //height: 40,
              //width: 80,
              height: 45,
              width: 165,

              child: Container(
                alignment: Alignment.center,
                //margin: const EdgeInsets.all(45),
                height: 45,
                width: 165,
                //color: AppColors.buttonColor,
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
            ),
            Container(
              height: 45,
              width: 300,
              //color: AppColors.buttonColor,
              child: GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details) {
                  primaryVelocity = details.primaryVelocity;
                  if (localPosition.dx / 0.45 >= 0.0 &&
                      localPosition.dx / 0.45 <= 150.0) {
                    localPosition = Offset(0.0, 0.0);
                  } else if (localPosition.dx / 0.45 > 150.0 &&
                      localPosition.dx / 0.45 <= 300.0) {
                    localPosition = Offset(135.0, 0.0);
                  }
                  setState(() {});
                },
                onHorizontalDragUpdate: (DragUpdateDetails t) {
                  if (t.localPosition.dx >= 0.0 &&
                      t.localPosition.dx <= 300.0) {
                    // if( localPosition.dx+10)
                    localPosition = Offset(t.localPosition.dx * 0.45, 0.0);
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
