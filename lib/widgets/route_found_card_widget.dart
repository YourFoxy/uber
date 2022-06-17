import '../scripts/index.dart';

class RouteFoundCardWidget extends StatefulWidget {
  final String route;
  final String date;
  final String phoneNumber;
  const RouteFoundCardWidget({
    Key? key,
    required this.route,
    required this.date,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  State<RouteFoundCardWidget> createState() => _RouteFoundCardWidgetState();
}

class _RouteFoundCardWidgetState extends State<RouteFoundCardWidget> {
  late final RouteFoundCardBloc _routeFoundCardBloc;

  @override
  void initState() {
    super.initState();
    _routeFoundCardBloc = BlocProvider.of<RouteFoundCardBloc>(context);
    _routeFoundCardBloc.add(const ShowRouteEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteFoundCardBloc, RouteFoundCardState>(
      builder: (context, state) {
        return Container(
          height: 120,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: AppColors.orange,
            ),
          ),
          child: state.when(
            initWidget: () => Container(),
            showRoute: () => InkWell(
              onTap: () {
                _routeFoundCardBloc.add(const ShowPhoneNumberEvent());
              },
              child: _RouteInformationWidget(
                route: widget.route,
                date: widget.date,
              ),
            ),
            showPhoneNumber: () => InkWell(
              onTap: () {
                _routeFoundCardBloc.add(const ShowRouteEvent());
              },
              child: Center(
                child: InkWell(
                  onTap: () async {
                    _routeFoundCardBloc.add(
                      CallEvent(
                        phoneNumber: widget.phoneNumber,
                      ),
                    );
                  },
                  child: AppLargeText(
                    text: widget.phoneNumber,
                    color: AppColors.orange,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _RouteInformationWidget extends StatelessWidget {
  final String route;
  final String date;
  const _RouteInformationWidget({
    Key? key,
    required this.route,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 220,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                child: AppLargeText(
                  text: route,
                  color: AppColors.orange,
                  size: 25,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: AppLargeText(
                  text: date,
                  color: AppColors.orange.withOpacity(0.7),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                width: 2,
                color: AppColors.orange,
              ),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://sun9-west.userapi.com/sun9-54/s/v1/if2/u8jjyS4xQlwQeH1-OHM5vuBze5mvoFnqUEBUJbX0e8Cy0CcCHoXJ1gjBKgV9I7H3hFC36Eubl8PreYHncIV7divl.jpg?size=563x565&quality=95&type=album'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.call,
              color: AppColors.orange,
            ),
          ),
        ),
      ],
    );
  }
}
