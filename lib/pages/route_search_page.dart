import 'package:uber/scripts/index.dart';

class RouteSearchPage extends StatefulWidget {
  const RouteSearchPage({Key? key}) : super(key: key);

  @override
  State<RouteSearchPage> createState() => _RouteSearchPageState();
}

class _RouteSearchPageState extends State<RouteSearchPage> {
  final _navigationService = GetIt.instance.get<NavigationService>();

  final _fromRouteKey = GlobalKey();
  final _toRouteKey = GlobalKey();
  final _dateKey = GlobalKey();

  late final RouteSearchBloc _routeSearchBloc;

  TextEditingController get _fromRouteController =>
      (_fromRouteKey.currentWidget as TextField).controller!;
  TextEditingController get _toRouteController =>
      (_toRouteKey.currentWidget as TextField).controller!;
  TextEditingController get _dateController =>
      (_dateKey.currentWidget as TextField).controller!;

  @override
  void initState() {
    super.initState();
    _routeSearchBloc = BlocProvider.of<RouteSearchBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    _fromRouteController.dispose();
    _toRouteController.dispose();
    _dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.plum2,
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
      body: SingleChildScrollView(
        child: BlocBuilder<RouteSearchBloc, RouteSearchState>(
          builder: (context, state) {
            return state.when(
              initPage: () => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: TextFieldWidget(
                          hintText: 'from',
                          borderColor: AppColors.orange,
                          width: 160,
                          textKey: _fromRouteKey,
                          controller: TextEditingController(
                            text: '',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: TextFieldWidget(
                          hintText: 'to',
                          borderColor: AppColors.orange,
                          width: 160,
                          textKey: _toRouteKey,
                          controller: TextEditingController(
                            text: '',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextFieldWidget(
                    hintText: 'date',
                    borderColor: AppColors.orange,
                    width: 360,
                    textKey: _dateKey,
                    controller: TextEditingController(
                      text: '',
                    ),
                  ),
                  ButtonWidget(
                    text: 'search',
                    onTap: () => () {
                      _routeSearchBloc.add(
                        SearchRoutesEvent(
                          fromRoute: _fromRouteController.text,
                          toRoute: _toRouteController.text,
                        ),
                      );
                    },
                  ),
                ],
              ),
              showRoutes: (routesAndDate) => ListView.builder(
                itemCount: routesAndDate.length,
                itemBuilder: (context, index) {
                  return RouteFoundCardWidget(
                    route:
                        '${routesAndDate[index][fromRoute]} - ${routesAndDate[index][toRoute]}',
                    date: '${routesAndDate[index][dateFieldInMap]}',
                    phoneNumber: '${routesAndDate[index][phoneNubmer]}',
                  ).createWithProvider<RouteFoundCardBloc>();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
