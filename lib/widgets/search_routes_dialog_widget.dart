import '../scripts/index.dart';

class SearchRoutesDialogWidget extends StatefulWidget {
  const SearchRoutesDialogWidget({Key? key}) : super(key: key);

  @override
  State<SearchRoutesDialogWidget> createState() =>
      _SearchRoutesDialogWidgetState();
}

class _SearchRoutesDialogWidgetState extends State<SearchRoutesDialogWidget> {
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
  void dispose() {
    super.dispose();
    _departurePointController.dispose();
    _arrivalPointController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: AppLargeText(text: 'Search'),
      backgroundColor: AppColors.plum,
      content: Column(
        children: [
          LocationTextFieldWidget(
            hintText: 'откуда',
            controller: _departurePointController,
            borderColor: AppColors.orange,
            textColor: AppColors.orange,
            // width: 180,
            // height: 60,
            onTap: () {
              // routeCreationBloc.add(
              //   ShowRouteListEvent(context: context),
              // );
            },
          ),
          LocationTextFieldWidget(
            hintText: 'куда',
            controller: _arrivalPointController,
            borderColor: AppColors.orange,
            textColor: AppColors.orange,
            onTap: () {
              // routeCreationBloc.add(
              //   ShowRouteListEvent(context: context),
              // );
            },
          ),
          InkWell(
            onTap: () {
              // routeCreationBloc.add(
              //   const ShowCalendarForSearchEvent(),
              // );
            },
            child: OrangeButtonWidget(
              textButton: ' date',
            ),
          ),
        ],
      ),
      actions: [
        InkWell(
          child: Container(
            width: double.infinity,
            height: 50,
            color: AppColors.orange,
          ),
        )
      ],
    );
  }
}
