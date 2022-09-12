// import 'package:uber/scripts/index.dart';

// class HomePage extends StatefulWidget {
//   final NavigationService navigationService;
//   const HomePage({Key? key, required this.navigationService}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String pickImageUrl = '';
//   late final HomeBloc _homeBloc;
//   final _navigationService = GetIt.instance.get<NavigationService>();

//   @override
//   void initState() {
//     super.initState();

//     _homeBloc = BlocProvider.of<HomeBloc>(context);
//     _homeBloc.add(const LoadedUserInformationEvent());
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(
//       builder: (context, state) {
//         return Scaffold(
//           backgroundColor: AppColors.plum,
//           drawer: DrawerMenu(
//             navigationService: _navigationService,
//           ).createWithProvider<DrawerWidgetBloc>(),
//           appBar: AppBar(
//             backgroundColor: AppColors.plum,
//             iconTheme: const IconThemeData(
//               color: AppColors.orange,
//             ),
//             title: const AppLargeText(
//               text: '',
//             ),
//           ),
//           body: SingleChildScrollView(
//             child: Center(
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     height: 250,
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                       color: AppColors.dark,
//                       borderRadius: BorderRadius.vertical(
//                         bottom: Radius.circular(30),
//                       ),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Container(
//                               width: 120,
//                               margin: const EdgeInsets.only(
//                                 left: 15,
//                                 bottom: 40,
//                               ),
//                               child: (state is LoadedUserInformationState)
//                                   ? AppLargeText(
//                                       color: AppColors.orange,
//                                       text: state.nicknameAndCity,
//                                     )
//                                   : const AppLargeText(
//                                       color: AppColors.orange,
//                                       text: 'sf',
//                                     ),
//                             ),
//                             Container(
//                               margin: const EdgeInsets.only(
//                                 left: 15,
//                                 bottom: 40,
//                               ),
//                               child: AppLargeText(
//                                 text: (state is LoadedUserInformationState)
//                                     ? state.currentUserPhoneNumber
//                                     : '',
//                                 color: AppColors.orange,
//                                 size: 25,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const AvatarWidgetForView()
//                             .createWithProvider<ViewAvatarBloc>(),
//                       ],
//                     ),
//                   ),
//                   const PlaceForCardWidget(
//                     text: 'Save',
//                     nameCollection: '',
//                   ),
//                   const PlaceForCardWidget(
//                     text: 'My',
//                     nameCollection: collectionNameWithRoutes,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             backgroundColor: AppColors.dark,
//             onPressed: () {
//               widget.navigationService.navigatorToRouteCreationPage();
//             },
//             child: const Icon(
//               Icons.edit,
//               color: AppColors.orange,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:uber/scripts/index.dart';
import 'package:uber/widgets/drag.dart';
import 'package:uber/widgets/route_list.dart';
import 'package:uber/widgets/rr.dart';

import '../widgets/switch_bar.dart';

class HomePage extends StatefulWidget {
  final NavigationService navigationService;
  const HomePage({Key? key, required this.navigationService}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pickImageUrl = '';
  late final HomeBloc _homeBloc;
  final _navigationService = GetIt.instance.get<NavigationService>();

  // final PageController cardRoureController = PageController();

  @override
  void initState() {
    super.initState();

    _homeBloc = BlocProvider.of<HomeBloc>(context);
    _homeBloc.add(const LoadedUserInformationEvent());

    //cardRoureController.addListener(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          //
          // backgroundColor: AppColors.plum,
          drawer: DrawerMenu(
            navigationService: _navigationService,
          ).createWithProvider<DrawerWidgetBloc>(),
          appBar: AppBar(
            backgroundColor: AppColors.plum,
            iconTheme: const IconThemeData(
              color: AppColors.orange,
            ),
            title: const AppLargeText(
              text: '',
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.dark,
              gradient: AppColors.backgroundColor,
            ),
            //  child: SingleChildScrollView(
            //  child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RR(),
                Stack(
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SwitchBar(),
                ),
                SwipingButton(
                  onSwipeCallback: () {},
                  text: '',
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: RouteList(
                    nameCollection: collectionNameWithRoutes,
                  ).createWithProvider<RouteCardBloc>(),
                ),
                // Container(
                //   height: 250,
                //   width: double.infinity,
                //   decoration: const BoxDecoration(
                //     color: AppColors.dark,
                //     borderRadius: BorderRadius.vertical(
                //       bottom: Radius.circular(30),
                //     ),
                //   ),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         children: [
                //           Container(
                //             width: 120,
                //             margin: const EdgeInsets.only(
                //               left: 15,
                //               bottom: 40,
                //             ),
                //             child: (state is LoadedUserInformationState)
                //                 ? AppLargeText(
                //                     color: AppColors.orange,
                //                     text: state.nicknameAndCity,
                //                   )
                //                 : const AppLargeText(
                //                     color: AppColors.orange,
                //                     text: 'sf',
                //                   ),
                //           ),
                //           Container(
                //             margin: const EdgeInsets.only(
                //               left: 15,
                //               bottom: 40,
                //             ),
                //             child: AppLargeText(
                //               text: (state is LoadedUserInformationState)
                //                   ? state.currentUserPhoneNumber
                //                   : '',
                //               color: AppColors.orange,
                //               size: 25,
                //             ),
                //           ),
                //         ],
                //       ),
                //       const AvatarWidgetForView()
                //           .createWithProvider<ViewAvatarBloc>(),
                //     ],
                //   ),
                // ),

                // const PlaceForCardWidget(
                //   text: 'Save',
                //   nameCollection: '',
                // ),
                // const PlaceForCardWidget(
                //   text: 'My',
                //   nameCollection: collectionNameWithRoutes,
                // ),

                // Container(
                //   height: 400,
                //   width: 400,
                //   child: PageView(
                //     controller: cardRoureController,
                //     children: [
                //       InkWell(
                //         onTap: () {
                //           print('........${cardRoureController.page}');
                //           cardRoureController.page;
                //         },
                //         child: Container(
                //           margin: EdgeInsets.all(30.0),
                //           height: 100,
                //           width: 200,
                //           color: AppColors.dark,
                //         ),
                //       ),
                //       InkWell(
                //         onTap: () {
                //           print('........${cardRoureController.page}');
                //           cardRoureController.page;
                //         },
                //         child: Container(
                //           height: 100,
                //           width: 200,
                //           color: AppColors.orange,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                // Row(
                //   children: [
                //     Container(
                //       height: 10,
                //       width: 10,
                //       color: cardRoureController.page == 0.0
                //           ? AppColors.dark
                //           : AppColors.orange,
                //     ),
                //   ],
                // )
              ],
            ),
          ),
          // ),
          // ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.dark,
            onPressed: () {
              widget.navigationService.navigatorToRouteCreationPage();
            },
            child: const Icon(
              Icons.edit,
              color: AppColors.orange,
            ),
          ),
        );
      },
    );
  }
}
