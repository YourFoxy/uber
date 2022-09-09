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
          // onPageChanged: (index){

          // },
          itemBuilder: ((context, index) {
            var scale = _cardController.page == index ? 1.0 : 0.8;
            return TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 150),
              tween: Tween(begin: scale, end: scale),
              builder: (BuildContext context, double value, Widget? child) {
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
              child: Container(
                child: routeCard,
              ),
            );
          }),
        ),
      );
    });
  }
}
