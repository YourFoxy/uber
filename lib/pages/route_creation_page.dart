import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_bloc.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/list_of_location_widget.dart';
import 'package:uber/widgets/location_text_field_widget.dart';

class RouteCreationPage extends StatefulWidget {
  const RouteCreationPage({Key? key}) : super(key: key);

  @override
  State<RouteCreationPage> createState() => _RouteCreationPageState();
}

class _RouteCreationPageState extends State<RouteCreationPage> {
  late final RouteCreationBloc _routeCreationBloc;

  final TextEditingController _departurePointController =
      TextEditingController();
  final TextEditingController _arrivalPointController = TextEditingController();

  String _departurePoint = '';
  String _arrivalPoint = '';

  @override
  void initState() {
    super.initState();
    _departurePointController.addListener(
      () {
        setState(
          () {
            _departurePoint = _departurePointController.text;
          },
        );
      },
    );
    _arrivalPointController.addListener(
      () {
        setState(
          () {
            _arrivalPoint = _arrivalPointController.text;
          },
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeCreationBloc = BlocProvider.of<RouteCreationBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    _departurePointController.dispose();
    _arrivalPointController.dispose();
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
              _routeCreationBloc.add(const RouteCreationEvent.closeLocation());
            },
            splashColor: Colors.black.withOpacity(0),
            highlightColor: Colors.black.withOpacity(0),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: _PlaceForRouteTextFields(
                    arrivalPointController: _arrivalPointController,
                    departurePointController: _departurePointController,
                    routeCreationBloc: _routeCreationBloc,
                  ),
                ),
                SafeArea(
                  child: state.when(
                    pageInit: () => Container(),
                    showLocationForArrivalPoint: (locationMap) => Padding(
                      padding: const EdgeInsets.only(
                        top: 235.0,
                      ),
                      child: ListOfLocationWidget(
                        locations: locationMap,
                        searchLocationString: _arrivalPoint,
                        onRouteChanged: (location) {
                          _arrivalPointController.text = location;
                          _routeCreationBloc
                              .add(const RouteCreationEvent.closeLocation());
                        },
                      ),
                    ),
                    showLocationForDeparturePoint: (locationMap) => Padding(
                      padding: const EdgeInsets.only(
                        top: 120.0,
                      ),
                      child: ListOfLocationWidget(
                        locations: locationMap,
                        searchLocationString: _departurePoint,
                        onRouteChanged: (location) {
                          _departurePointController.text = location;
                          _routeCreationBloc
                              .add(const RouteCreationEvent.closeLocation());
                        },
                      ),
                    ),
                    closeLocation: () => Container(),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.orange,
            onPressed: () async {
              _routeCreationBloc.add(
                AddRouteEvent(
                  departurePoint: _departurePointController.text,
                  arrivalPoint: _arrivalPointController.text,
                  context: context,
                ),
              );
            },
            child: const Icon(
              Icons.save,
              color: AppColors.dark,
            ),
          ),
        );
      },
    );
  }
}

class _PlaceForRouteTextFields extends StatelessWidget {
  final TextEditingController departurePointController;
  final TextEditingController arrivalPointController;
  final Bloc routeCreationBloc;
  const _PlaceForRouteTextFields({
    Key? key,
    required this.departurePointController,
    required this.routeCreationBloc,
    required this.arrivalPointController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  LocationTextFieldWidget(
                    hintText: 'откуда',
                    controller: departurePointController,
                    backgroundColor: AppColors.orange,
                    textColor: AppColors.dark,
                    onTap: () {
                      routeCreationBloc.add(
                        RouteCreationEvent.showLocationForDeparturePoint(
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
                      routeCreationBloc.add(
                        RouteCreationEvent.showLocationForArrivalPoint(
                          context: context,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}