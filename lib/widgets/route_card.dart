import 'package:uber/scripts/index.dart';

class RouteCard extends StatefulWidget {
  final String nameCollection;
  const RouteCard({
    Key? key,
    required this.nameCollection,
  }) : super(key: key);

  @override
  State<RouteCard> createState() => _RouteCardState();
}

class _RouteCardState extends State<RouteCard> {
  late final RouteCardBloc _routeCardBloc;

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
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteCardBloc, RouteCardState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.when(
            routeCardInit: () => 0,
            loadedRoutes: (list) => list.length,
            removeRoute: (list) => list.length,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(15),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  width: 3,
                  color: AppColors.orange,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    width: 150,
                    child: IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () async {
                        _routeCardBloc.add(
                          RemoveRouteEvent(
                            routeId: state.maybeWhen(
                                loadedRoutes: (list) =>
                                    '${list[index][routeId]}',
                                removeRoute: (list) =>
                                    '${list[index][routeId]}',
                                orElse: () => ''),
                            nameCollection: widget.nameCollection,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.close,
                        color: AppColors.orange,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: state.maybeWhen(
                            loadedRoutes: (list) =>
                                '${list[index][routeFieldInMap]}',
                            removeRoute: (list) =>
                                '${list[index][routeFieldInMap]}',
                            orElse: () => '',
                          ),
                          color: AppColors.orange,
                          size: 17,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: AppLargeText(
                            text: state.maybeWhen(
                              loadedRoutes: (list) =>
                                  '${list[index][dateFieldInMap]}',
                              removeRoute: (list) =>
                                  '${list[index][dateFieldInMap]}',
                              orElse: () => '',
                            ),
                            color: AppColors.orange.withOpacity(0.7),
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
