import 'package:uber/scripts/index.dart';
import 'package:uber/widgets/search_routes_dialog_widget.dart';

class RouteSearchPage extends StatefulWidget {
  const RouteSearchPage({Key? key}) : super(key: key);

  @override
  State<RouteSearchPage> createState() => _RouteSearchPageState();
}

class _RouteSearchPageState extends State<RouteSearchPage> {
  late final RouteSearchBloc _routeSearchBloc;

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
    _routeSearchBloc = BlocProvider.of<RouteSearchBloc>(context);
    _routeSearchBloc.add(OpenSearchDialogEvent());
  }

  @override
  void dispose() {
    super.dispose();
    _departurePointController.dispose();
    _arrivalPointController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteSearchBloc, RouteSearchState>(
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
            child:
                //Stack(
                // children: [
                // SingleChildScrollView(
                //   child: _PlaceForRouteTextFields(
                //     arrivalPointController: _arrivalPointController,
                //     departurePointController: _departurePointController,
                //     routeCreationBloc: _routeSearchBloc,
                //     date: _date,
                //   ),
                // ),
                SafeArea(
              child: state.when(
                initPage: () => Container(),
                showRoute: (routesAndDates) => ListView.builder(
                  itemCount: routesAndDates.length,
                  itemBuilder: (context, index) {
                    return RouteFoundCardWidget(
                      date: '${routesAndDates[index][dateFieldInMap]}',
                      route:
                          '${routesAndDates[index][fromRoute]} - ${routesAndDates[index][toRoute]}',
                      phoneNumber: '{routesAndDates[index][phoneNubmer]}',
                    );
                  },
                ),
                openSearchDialog: () => const SearchRoutesDialogWidget()
                    .createWithProvider<SearchRoutesDialogBloc>(),
                // showRouteList: (locationMap) => Padding(
                //   padding: const EdgeInsets.only(
                //     top: 235.0,
                //   ),
                //   child: ListOfLocationWidget(
                //     locations: locationMap,
                //     searchLocationString: _arrivalPoint,
                //     onRouteChanged: (location) {
                //       _arrivalPointController.text = location;
                //       _routeSearchBloc.add(CloseWidgetEvent());
                //     },
                //     onClose: () {
                //       print('ddddddddddddddddddddddd');
                //       _routeSearchBloc.add(CloseWidgetEvent());
                //     },
                //   ),
                // ),
                // showRoute: () => FoundedRoutesPage(),
                // closeWidget: () => Container(),
                // showCalendar: (
                //         //month
                //         ) =>
                //     Center(
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //       top: 360.0,
                //     ),
                //     child: CalendarWidget(
                //       onDateSet: (date) {
                //         _date = date;
                //         setState(() {});
                //       },
                //     ).createWithProvider<CalendarBloc>(),
                //   ),
                // ),
                // showLocationForDeparturePoint: (locationMap) => Padding(
                //   padding: const EdgeInsets.only(
                //     top: 120.0,
                //   ),
                //   child: ListOfLocationWidget(
                //     locations: locationMap,
                //     searchLocationString: _departurePoint,
                //     onRouteChanged: (location) {
                //       _departurePointController.text = location;
                //       _routeSearchBloc
                //           .add(const RouteCreationEvent.closeLocation());
                //     },
                //     onClose: () {
                //       print('ddddddddddddddddddddddd');
                //       _routeSearchBloc
                //           .add(const RouteCreationEvent.closeLocation());
                //     },
                //   ),
                // ),
                // closeLocation: () => Container(),
              ),
            ),
            // ],
          ),
          //),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.orange,
            onPressed: () async {
              // _routeSearchBloc.add(
              //   // RouteCreationEvent.addRoute(
              //   //   departurePoint: _departurePointController.text,
              //   //   arrivalPoint: _arrivalPointController.text,
              //   //   date: _date,
              //   //   context: context,
              //   //),
              // );
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
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // LocationTextFieldWidget(
                  //   hintText: 'откуда',
                  //   controller: departurePointController,
                  //   borderColor: AppColors.orange,
                  //   textColor: AppColors.orange,
                  //   onTap: () {
                  //     routeCreationBloc.add(
                  //       ShowRouteListEvent(context: context),
                  //     );
                  //   },
                  // ),
                  const SearchRoutesDialogWidget()
                      .createWithProvider<SearchRoutesDialogBloc>(),
                  // LocationTextFieldWidget(
                  //   hintText: 'куда',
                  //   controller: arrivalPointController,
                  //   borderColor: AppColors.orange,
                  //   textColor: AppColors.orange,
                  //   onTap: () {
                  //     routeCreationBloc.add(
                  //       ShowRouteListEvent(context: context),
                  //     );
                  //   },
                  // ),
                  // InkWell(
                  //   onTap: () {
                  //     routeCreationBloc.add(
                  //       const ShowCalendarForSearchEvent(),
                  //     );
                  //   },
                  //   child: OrangeButtonWidget(
                  //     textButton: date,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
