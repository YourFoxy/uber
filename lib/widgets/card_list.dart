import 'dart:math';

import '../scripts/index.dart';

class CardList extends StatefulWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  double _viewportFraction = 0.75;

  late final _cardController;
  var _currCardValue = 0.0;

  final double _scaleFactor = 0.7;
  final double _height = 230;
  //Matrix4 matrix = Matrix4.identity();
  late var _currentScale = 0.0;
  late var _currentTransform = 0.0;

  @override
  void initState() {
    super.initState();
    _cardController = PageController(viewportFraction: _viewportFraction);
    _cardController.addListener(() {
      setState(() {
        _currCardValue = _cardController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _cardController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage(routeCardUrl);
    Image routeCard = Image(
      image: assetImage,
      // height: 300,
    );

    return Container(
      child: PageView.builder(
        controller: _cardController,
        itemBuilder: ((context, index) {
          double pad = 20.0;
          if (_cardController.page == index) {
            pad = 0.0;
          } else {
            pad = 20.0;
          }
          //  double scale = max(_viewportFraction,
          //    (2.0 - (_cardController.page - index).abs()) + _viewportFraction);
          return
              //Padding(
              // padding: EdgeInsets.symmetric(
              // vertical: 100 - scale * 20, horizontal: 10),
              //child:
              Padding(
            padding: EdgeInsets.all(pad),
            child: Container(child: routeCard),
          );
          // Container(
          //   //height: 100,
          //   // width: 100,
          //   color: AppColors.buttonColor,
          // ),
          //  );
        }),
      ),
    );
    // return PageView.builder(
    //   controller: _cardController,
    //   physics: const BouncingScrollPhysics(),
    //   itemBuilder: (context, position) {
    //     Matrix4 matrix = Matrix4.identity();
    //     if (position == _currCardValue.floor()) {
    //       _currentScale = 1 - (_currCardValue - position) * (1 - _scaleFactor);
    //       _currentTransform = _height * (1 - _currentScale) / 2;
    //       matrix = Matrix4.diagonal3Values(1.0, _currentScale, 1.0)
    //         ..setTranslationRaw(0, _currentTransform, 0);
    //     } else if (position == _currCardValue.floor() + 1) {
    //       _currentScale = _scaleFactor +
    //           (_currCardValue - position + 1) * (1 - _scaleFactor);
    //       _currentTransform = _height * (1 - _currentScale) / 2;
    //       matrix = Matrix4.diagonal3Values(1.0, _currentScale, 1.0)
    //         ..setTranslationRaw(0, _currentTransform, 0);
    //     } else if (position == _currCardValue.floor() - 1) {
    //       _currentScale = 1 - (_currCardValue - position) * (1 - _scaleFactor);
    //       var currTrans = _height * (1 - _currentScale) / 2;
    //       matrix = Matrix4.diagonal3Values(1.0, _currentScale, 1.0)
    //         ..setTranslationRaw(0, currTrans, 0);
    //     } else {
    //       _currentScale = 0.8;
    //       matrix = Matrix4.diagonal3Values(1.0, _currentScale, 1.0)
    //         ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    //     }
    //     return SizedBox(
    //       //  height: 150,
    //       //   width: 300,
    //       child: Transform(
    //         transform: matrix,
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 5),
    //           child: GestureDetector(
    //             child: Container(
    //               // height: 200,
    //               // width: 100,
    //               child: routeCard,
    //             ),
    //             // child: Align(
    //             //   alignment: Alignment.topCenter,
    //             //   child: Stack(
    //             //     children: [
    //             //       Container(
    //             //         padding: const EdgeInsets.only(left: 20, top: 20),
    //             //         height: 220,
    //             //         width: MediaQuery.of(context).size.width - 20,
    //             //         margin: const EdgeInsets.only(right: 5, left: 5),
    //             //         decoration: BoxDecoration(
    //             //             borderRadius: BorderRadius.circular(30),
    //             //             color: position.isEven
    //             //                 ? Color(0xFF69c5df)
    //             //                 : Color(0xFF9294cc),
    //             //             image: DecorationImage(
    //             //                 fit: BoxFit.cover,
    //             //                 image: AssetImage("img/food0.png"))),
    //             //       ),
    //             //       Align(
    //             //         alignment: Alignment.bottomCenter,
    //             //         child: Container(
    //             //           margin: const EdgeInsets.only(
    //             //               bottom: 40, left: 35, right: 35),
    //             //           width: double.maxFinite,
    //             //           height: 120,
    //             //           decoration: BoxDecoration(
    //             //               borderRadius: BorderRadius.circular(20),
    //             //               color: Colors.white,
    //             //               boxShadow: [
    //             //                 BoxShadow(
    //             //                     color: Color(0xFFe8e8e8),
    //             //                     blurRadius: 5.0,
    //             //                     offset: Offset(0, 5)),
    //             //                 BoxShadow(
    //             //                     color: Colors.white, offset: Offset(-5, 0)),
    //             //                 BoxShadow(
    //             //                     color: Colors.white, offset: Offset(5, 0))
    //             //               ]),
    //             //           child: Container(
    //             //             padding: const EdgeInsets.only(
    //             //                 top: 20, left: 15, right: 15),
    //             //             child: Column(
    //             //               crossAxisAlignment: CrossAxisAlignment.start,
    //             //               children: [
    //             //                 Text("Fruit nutrition meal"),
    //             //                 SizedBox(
    //             //                   height: 10,
    //             //                 ),
    //             //                 Row(
    //             //                   children: [
    //             //                     Wrap(
    //             //                       children: List.generate(
    //             //                           5,
    //             //                           (index) => Icon(Icons.star,
    //             //                               color: Colors.cyan, size: 15)),
    //             //                     ),
    //             //                     SizedBox(
    //             //                       width: 10,
    //             //                     ),
    //             //                     SizedBox(
    //             //                       width: 10,
    //             //                     ),
    //             //                   ],
    //             //                 ),
    //             //                 SizedBox(
    //             //                   height: 20,
    //             //                 ),
    //             //               ],
    //             //             ),
    //             //           ),
    //             //         ),
    //             //       ),
    //             //     ],
    //             //   ),
    //             // ),
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
