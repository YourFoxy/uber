import 'package:uber/scripts/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  GetIt.instance.registerSingleton(ToastService());
  GetIt.instance.registerSingleton(NavigationService());

  registerBlocsFactory();
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void registerBlocsFactory() {
  final GetIt _getIt = GetIt.instance;
  final ToastService _toastService = GetIt.instance.get<ToastService>();
  final _navigationService = GetIt.instance.get<NavigationService>();

  _getIt.registerFactory<SignInWithPhoneBloc>(() => SignInWithPhoneBloc(
        toastService: _toastService,
        navigationService: _navigationService,
      ));
  _getIt.registerFactory<DrawerWidgetBloc>(() => DrawerWidgetBloc(
        toastService: _toastService,
        navigationService: _navigationService,
      ));
  _getIt.registerFactory<ViewAvatarBloc>(() => ViewAvatarBloc());
  _getIt.registerFactory<EditableRoundAvatarBloc>(
      () => EditableRoundAvatarBloc());
  _getIt.registerFactory<HomeBloc>(() => HomeBloc());
  _getIt.registerFactory<VerifyCodeBloc>(() => VerifyCodeBloc());
  _getIt.registerFactory<RegisterUserInformationBloc>(
      () => RegisterUserInformationBloc());
  _getIt.registerFactory<EditableRectangularAvatarBloc>(
      () => EditableRectangularAvatarBloc());
  _getIt.registerFactory<EditUserInformationBloc>(() => EditUserInformationBloc(
        navigationService: _navigationService,
      ));
  _getIt.registerFactory<RouteCreationBloc>(() => RouteCreationBloc(
        navigationService: _navigationService,
      ));
  _getIt.registerFactory<RouteCardBloc>(() => RouteCardBloc());
  _getIt.registerFactory<CalendarBloc>(() => CalendarBloc());
  _getIt.registerFactory<RouteSearchBloc>(() => RouteSearchBloc());
  _getIt.registerFactory<RouteFoundCardBloc>(() => RouteFoundCardBloc());
}

class MyApp extends StatelessWidget {
  final _navigationService = GetIt.instance.get<NavigationService>();

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF5E838C),
      ),
      initialRoute: '/',
      navigatorKey: kNavigatorKey,
      routes: routes,
      home: FirebaseAuth.instance.currentUser == null
          ? LoginOrRegister(
              navigationService: _navigationService,
            )
          : HomePage(
              navigationService: _navigationService,
            ).createWithProvider<HomeBloc>(),
    );
  }
}
