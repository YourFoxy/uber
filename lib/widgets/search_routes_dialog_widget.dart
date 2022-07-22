import '../scripts/index.dart';

class SearchRoutesDialogWidget extends StatefulWidget {
  final ValueChanged<List<String>> onRouteSet;
  final Function onTap;
  const SearchRoutesDialogWidget({
    Key? key,
    required this.onTap,
    required this.onRouteSet,
  }) : super(key: key);

  @override
  State<SearchRoutesDialogWidget> createState() =>
      _SearchRoutesDialogWidgetState();
}

class _SearchRoutesDialogWidgetState extends State<SearchRoutesDialogWidget> {
  late final SearchRoutesDialogBloc _searchRoutesDialogBloc;

  final TextEditingController _departurePointController =
      TextEditingController();
  final TextEditingController _arrivalPointController = TextEditingController();

  String _departurePoint = '';
  String _arrivalPoint = '';

  String _date = 'Дата';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _searchRoutesDialogBloc = BlocProvider.of<SearchRoutesDialogBloc>(context);
  }

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
  void dispose() {
    super.dispose();
    _departurePointController.dispose();
    _arrivalPointController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        _searchRoutesDialogBloc.add(const CloseAllWidgetEvent());
      }),
      child: AlertDialog(
        insetPadding: const EdgeInsets.all(10),
        title: const AppLargeText(
          text: 'Search',
          color: AppColors.orange,
        ),
        backgroundColor: AppColors.plum,
        content: Stack(
          children: [
            Column(
              children: [
                LocationTextFieldWidget(
                  hintText: 'откуда',
                  controller: _departurePointController,
                  borderColor: AppColors.orange,
                  textColor: AppColors.orange,
                  onTap: () {
                    _searchRoutesDialogBloc.add(
                      const ShowAllDeparturePointsEvent(),
                    );
                  },
                ),
                LocationTextFieldWidget(
                  hintText: 'куда',
                  controller: _arrivalPointController,
                  borderColor: AppColors.orange,
                  textColor: AppColors.orange,
                  onTap: () {
                    _searchRoutesDialogBloc.add(
                      const ShowAllArrivalPointsEvent(),
                    );
                  },
                ),
                InkWell(
                  onTap: () {
                    _searchRoutesDialogBloc
                        .add(const ShowCalendarForSearchEvent());
                  },
                  child: OrangeButtonWidget(
                    textButton: _date,
                  ),
                ),
              ],
            ),
            BlocBuilder<SearchRoutesDialogBloc, SearchRoutesDialogState>(
              builder: (context, state) {
                return state.when(
                  initDialog: () => const SizedBox(),
                  showAllArrivalPoints: (locationMap) => Padding(
                    padding: const EdgeInsets.only(top: 230.0),
                    child: ListOfLocationWidget(
                      locations: locationMap,
                      searchLocationString: _arrivalPoint,
                      onClose: () {
                        _searchRoutesDialogBloc.add(
                          const CloseAllWidgetEvent(),
                        );
                      },
                      onRouteChanged: (location) {
                        _arrivalPointController.text = location;
                        _searchRoutesDialogBloc.add(
                          const CloseAllWidgetEvent(),
                        );
                      },
                    ),
                  ),
                  showAllDeparturePoints: (locationMap) => Padding(
                    padding: const EdgeInsets.only(top: 110.0),
                    child: ListOfLocationWidget(
                      locations: locationMap,
                      searchLocationString: _departurePoint,
                      onClose: () {
                        _searchRoutesDialogBloc.add(
                          const CloseAllWidgetEvent(),
                        );
                      },
                      onRouteChanged: (location) {
                        _departurePointController.text = location;
                        _searchRoutesDialogBloc.add(
                          const CloseAllWidgetEvent(),
                        );
                      },
                    ),
                  ),
                  showCalendar: () => Padding(
                    padding: const EdgeInsets.only(top: 340),
                    child: CalendarWidget(
                      onDateSet: (onDateSet) {
                        setState(
                          () {
                            _date = onDateSet;
                          },
                        );
                      },
                    ).createWithProvider<CalendarBloc>(),
                  ),
                  closeWidget: () => const SizedBox(),
                );
              },
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              widget.onRouteSet.call([_departurePoint, _arrivalPoint]);
              widget.onTap();
            },
            child: Container(
              width: double.infinity,
              height: 50,
              color: AppColors.orange,
              child: const Center(
                  child: Icon(
                Icons.search,
                color: AppColors.dark,
              )),
            ),
          )
        ],
      ),
    );
  }
}
