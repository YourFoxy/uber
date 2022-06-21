import 'package:uber/scripts/index.dart';

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

  String _date = 'Дата';

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
          body: SingleChildScrollView(
            child: InkWell(
              onTap: () {
                _routeCreationBloc
                    .add(const RouteCreationEvent.closeLocation());
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: _PlaceForRouteTextFields(
                      arrivalPointController: _arrivalPointController,
                      departurePointController: _departurePointController,
                      routeCreationBloc: _routeCreationBloc,
                      date: _date,
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
                      showCalendar: (
                              //month
                              ) =>
                          Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 360.0,
                          ),
                          child: CalendarWidget(
                            onDateSet: (date) {
                              _date = date;
                              setState(() {});
                            },
                          ).createWithProvider<CalendarBloc>(),
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
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.orange,
            onPressed: () async {
              _routeCreationBloc.add(
                RouteCreationEvent.addRoute(
                  departurePoint: _departurePointController.text,
                  arrivalPoint: _arrivalPointController.text,
                  date: _date,
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
  final String date;
  const _PlaceForRouteTextFields({
    Key? key,
    required this.departurePointController,
    required this.routeCreationBloc,
    required this.arrivalPointController,
    required this.date,
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
                    borderColor: AppColors.orange,
                    textColor: AppColors.orange,
                    onTap: () {
                      routeCreationBloc.add(
                        RouteCreationEvent.showLocationForDeparturePoint(
                            context: context),
                      );
                    },
                  ),
                  LocationTextFieldWidget(
                    hintText: 'куда',
                    controller: arrivalPointController,
                    borderColor: AppColors.orange,
                    textColor: AppColors.orange,
                    onTap: () {
                      routeCreationBloc.add(
                        RouteCreationEvent.showLocationForArrivalPoint(
                            context: context),
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      routeCreationBloc.add(
                        const RouteCreationEvent.showCalendarEvent(
              
                            ),
                      );
                    },
                    child: OrangeButtonWidget(
                      textButton: date,
                    ),
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
