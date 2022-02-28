import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_bloc.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_event.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_state.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/list_of_localities_widget.dart';
import 'package:uber/widgets/location_text_field_widget.dart';
import 'package:uber/widgets/long_save_button_widget.dart';

class RouteCreationPage extends StatefulWidget {
  const RouteCreationPage({Key? key}) : super(key: key);

  @override
  State<RouteCreationPage> createState() => _RouteCreationPageState();
}

class _RouteCreationPageState extends State<RouteCreationPage> {
  late final Bloc _bloc;

  final TextEditingController departurePointController =
      TextEditingController();
  final TextEditingController arrivalPointController = TextEditingController();
  String _departurePoint = '';
  String _arrivalPoint = '';

  @override
  void initState() {
    super.initState();
    departurePointController.addListener(
      () {
        setState(
          () {
            _departurePoint = departurePointController.text;
          },
        );
      },
    );
    arrivalPointController.addListener(
      () {
        setState(
          () {
            _arrivalPoint = arrivalPointController.text;
          },
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<RouteCreationBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    departurePointController.dispose();
    arrivalPointController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteCreationBloc, RouteCreationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.plum,
            iconTheme: const IconThemeData(color: AppColors.orange),
            title: const AppLargeText(
              text: '',
            ),
          ),
          backgroundColor: AppColors.dark,
          body: InkWell(
            onTap: () {
              _bloc.add(CloseLocationEvent());
            },
            splashColor: Colors.black.withOpacity(0),
            highlightColor: Colors.black.withOpacity(0),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 170,
                      ),
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 300,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.plum,
                              ),
                              child: Column(
                                children: [
                                  LocationTextFieldWidget(
                                    hintText: 'откуда',
                                    controller: departurePointController,
                                    backgroundColor: AppColors.orange,
                                    textColor: AppColors.dark,
                                    onTap: () {
                                      _bloc.add(
                                        ShowLocationForDeparturePointEvent(
                                          context: context,
                                        ),
                                      );
                                    },
                                  ),
                                  LocationTextFieldWidget(
                                    hintText: 'куда',
                                    controller: arrivalPointController,
                                    backgroundColor: AppColors.orange,
                                    textColor: AppColors.dark,
                                    onTap: () {
                                      _bloc.add(
                                        ShowLocationForArrivalPointEvent(
                                          context: context,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          state is ShowLocationForDeparturePointState
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                    top: 120.0,
                                  ),
                                  child: ListOfLocalotiesWidget(
                                    localities: state.locationMap,
                                    searchLocationString: _departurePoint,
                                    onRouteChanged: (location) {
                                      departurePointController.text = location;
                                    },
                                  ),
                                )
                              : const SizedBox(),
                          state is ShowLocationForArrivalPointState
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                    top: 240.0,
                                  ),
                                  child: ListOfLocalotiesWidget(
                                    localities: state.locationMap,
                                    searchLocationString: _arrivalPoint,
                                    onRouteChanged: (location) {
                                      arrivalPointController.text = location;
                                    },
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: LongSaveButtonWidget(
                    function: () async {
                      _bloc.add(
                        AddRouteEvent(
                          departurePoint: departurePointController.text,
                          arrivalPoint: arrivalPointController.text,
                          context: context,
                        ),
                      );
                    },
                    color: AppColors.plum,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
