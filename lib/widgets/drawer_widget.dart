import 'package:uber/scripts/index.dart';

class DrawerMenu extends StatefulWidget {
  final NavigationService navigationService;
  const DrawerMenu({Key? key, required this.navigationService})
      : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  late final DrawerWidgetBloc _drawerBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _drawerBloc = BlocProvider.of<DrawerWidgetBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerWidgetBloc, DrawerWidgetState>(
      builder: (context, state) {
        return Drawer(
          backgroundColor: AppColors.plum2,
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: AppColors.plum),
                child: AppTextStyle(
                  text: '',
                ),
              ),
              InkWell(
                onTap: () {
                  widget.navigationService.navigatorToHomePage();
                },
                child: const IconAndTextForDrawerButton(
                  iconData: Icons.home,
                  text: 'Home page',
                ),
              ),
              InkWell(
                onTap: () {
                  widget.navigationService.navigatorToEditUserInformationPage();
                },
                child: const IconAndTextForDrawerButton(
                  iconData: Icons.edit,
                  text: 'Edit profile',
                ),
              ),
              InkWell(
                onTap: () async {
                  widget.navigationService.navigatorToSearchRoutePage();
                  List<Map<String, String>> routesAndDates =
                      await UserData.getRoutesWithParameters();
                  print(routesAndDates.length);
                },
                child: const IconAndTextForDrawerButton(
                  iconData: Icons.route,
                  text: 'Search route',
                ),
              ),
              const Divider(
                height: 10,
                thickness: 1,
                indent: 10,
                endIndent: 10,
                color: AppColors.orange,
              ),
              InkWell(
                hoverColor: AppColors.orange,
                onTap: () async {
                  _drawerBloc.add(
                    ExitEvent(
                      context: context,
                    ),
                  );
                },
                child: const IconAndTextForDrawerButton(
                  iconData: Icons.exit_to_app,
                  text: 'Exit',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
