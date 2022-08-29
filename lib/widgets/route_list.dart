import '../scripts/index.dart';

class RouteList extends StatefulWidget {
  final String nameCollection;
  const RouteList({
    Key? key,
    required this.nameCollection,
  }) : super(key: key);

  @override
  State<RouteList> createState() => _RouteListState();
}

class _RouteListState extends State<RouteList> {
  late final _cardController;
  final double _viewportFraction = 0.75;
  late final RouteCardBloc _routeCardBloc;

  @override
  void initState() {
    super.initState();
    _cardController = PageController(viewportFraction: _viewportFraction);

    _cardController.addListener(() {
      setState(() {
        // _currCardValue = _cardController.page!;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeCardBloc = BlocProvider.of<RouteCardBloc>(context);
    _routeCardBloc
        .add(LoadedRoutesEvent(nameCollection: widget.nameCollection));
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

    return BlocBuilder<RouteCardBloc, RouteCardState>(
        builder: (context, state) {
      return Container(
        child: PageView.builder(
          controller: _cardController,
          itemCount: state.when(
            routeCardInit: () => 0,
            loadedRoutes: (list) => list.length,
            removeRoute: (list) => list.length,
          ),
          itemBuilder: ((context, index) {
            return Column(
              children: [
                _cardController.page == index
                    ? MyRouteCard(tr: false)
                    : MyRouteCard(tr: true),
              ],
            );
          }),
        ),
      );
    });
  }
}

class MyRouteCard extends StatelessWidget {
  bool tr;
  MyRouteCard({Key? key, required this.tr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage(routeCardUrl);
    Image routeCard = Image(
      image: assetImage,
      //height: 100,
    );
    return AnimatedContainer(
      duration: const Duration(milliseconds: 50),
      //color: tr ? AppColors.dark : AppColors.orange,
      padding: tr ? EdgeInsets.all(20) : EdgeInsets.all(0),
      child: Container(
        //  height: 100,
        child: routeCard,
      ),
    );
  }
}
