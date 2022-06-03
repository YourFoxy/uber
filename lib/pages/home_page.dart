import 'package:uber/scripts/index.dart';

class HomePage extends StatefulWidget {
  final NavigationService navigationService;
  const HomePage({Key? key, required this.navigationService}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pickImageUrl = '';
  late final HomeBloc _homeBloc;
  final _navigationService = GetIt.instance.get<NavigationService>();

  @override
  void initState() {
    super.initState();

    _homeBloc = BlocProvider.of<HomeBloc>(context);
    _homeBloc.add(const LoadedUserInformationEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.plum,
          drawer: DrawerMenu(
            navigationService: _navigationService,
          ).createWithProvider<DrawerWidgetBloc>(),
          appBar: AppBar(
            backgroundColor: AppColors.plum,
            iconTheme: const IconThemeData(color: AppColors.orange),
            title: const AppLargeText(
              text: '',
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 120,
                              margin: const EdgeInsets.only(
                                left: 15,
                                bottom: 40,
                              ),
                              child: (state is LoadedUserInformationState)
                                  ? AppLargeText(
                                      color: AppColors.orange,
                                      text: state.nicknameAndCity,
                                    )
                                  : const AppLargeText(
                                      color: AppColors.orange,
                                      text: 'sf',
                                    ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                                bottom: 40,
                              ),
                              child: AppLargeText(
                                text: (state is LoadedUserInformationState)
                                    ? state.currentUserPhoneNumber
                                    : '',
                                color: AppColors.orange,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                        const AvatarWidgetForView()
                            .createWithProvider<ViewAvatarBloc>(),
                      ],
                    ),
                  ),
                  const PlaceForCardWidget(
                    text: 'Save',
                    nameCollection: '',
                  ),
                  const PlaceForCardWidget(
                    text: 'My',
                    nameCollection: collectionNameWithRoutes,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColors.dark,
            onPressed: () {
              widget.navigationService.navigatorToRouteCreationPage();
            },
            child: const Icon(
              Icons.edit,
              color: AppColors.orange,
            ),
          ),
        );
      },
    );
  }
}
