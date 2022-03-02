import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_bloc.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_event.dart';
import 'package:uber/bloc/page_bloc/route_creation/route_creation_state.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/list_of_location_widget.dart';
import 'package:uber/widgets/location_text_field_widget.dart';
import 'package:uber/widgets/long_save_button_widget.dart';

class RouteCreationPage extends StatefulWidget {
  const RouteCreationPage({Key? key}) : super(key: key);

  @override
  State<RouteCreationPage> createState() => _RouteCreationPageState();
}

class _RouteCreationPageState extends State<RouteCreationPage> {
  late final Bloc _bloc;

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
    _bloc = BlocProvider.of<RouteCreationBloc>(context);
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
                      _PanelForRoutes(
                        departurePointController: _departurePointController,
                        arrivalPointController: _arrivalPointController,
                        state: state,
                        bloc: _bloc,
                        departurePoint: _departurePoint,
                        arrivalPoint: _arrivalPoint,
                        //locationMap: state.locationMap,
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
                          departurePoint: _departurePointController.text,
                          arrivalPoint: _arrivalPointController.text,
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

class _PanelForRoutes extends StatelessWidget {
  final TextEditingController departurePointController;
  final TextEditingController arrivalPointController;
  final RouteCreationState state;
  final Bloc<dynamic, dynamic> bloc;
  final String departurePoint;
  final String arrivalPoint;
  // final Map<dynamic, List<String>> locationMap;
  _PanelForRoutes(
      {required this.departurePointController,
      required this.arrivalPointController,
      required this.state,
      required this.bloc,
      required this.departurePoint,
      required this.arrivalPoint,
      //required this.locationMap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    bloc.add(
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
                    bloc.add(
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
                child: ListOfLocationWidget(
                  locations:
                      (state as ShowLocationForArrivalPointState).locationMap,
                  searchLocationString: departurePoint,
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
                child: ListOfLocationWidget(
                  locations:
                      (state as ShowLocationForArrivalPointState).locationMap,
                  searchLocationString: arrivalPoint,
                  onRouteChanged: (location) {
                    arrivalPointController.text = location;
                  },
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
