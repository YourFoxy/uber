import 'package:uber/scripts/index.dart';

class RouteSearchPage extends StatefulWidget {
  const RouteSearchPage({Key? key}) : super(key: key);

  @override
  State<RouteSearchPage> createState() => _RouteSearchPageState();
}

class _RouteSearchPageState extends State<RouteSearchPage> {
  late final RouteSearchBloc _routeSearchBloc;

  String _departurePoint = '';
  String _arrivalPoint = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeSearchBloc = BlocProvider.of<RouteSearchBloc>(context);
    _routeSearchBloc.add(const OpenSearchDialogEvent());
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
          body: state.when(
            initPage: () => Container(),
            showRoute: (routesAndDates) => ListView.builder(
              itemCount: routesAndDates.length,
              itemBuilder: (context, index) {
                return RouteFoundCardWidget(
                  date: '${routesAndDates[index][dateFieldInMap]}',
                  route:
                      '${routesAndDates[index][fromRoute]} - ${routesAndDates[index][toRoute]}',
                  phoneNumber: '${routesAndDates[index][phoneNubmer]}',
                ).createWithProvider<RouteFoundCardBloc>();
              },
            ),
            openSearchDialog: () => SingleChildScrollView(
              child: SearchRoutesDialogWidget(
                onTap: () {
                  _routeSearchBloc.add(
                    ShowFoundeRouteEvent(
                      fromRoute: _departurePoint,
                      toRoute: _arrivalPoint,
                    ),
                  );
                },
                onRouteSet: (route) {
                  _departurePoint = route[0];
                  _arrivalPoint = route[1];
                },
              ).createWithProvider<SearchRoutesDialogBloc>(),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.orange,
            onPressed: () async {
              _routeSearchBloc.add(const OpenSearchDialogEvent());
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
