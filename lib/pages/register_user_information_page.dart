import 'package:uber/scripts/index.dart';

class RegisterUserInformationPage extends StatefulWidget {
  final String phoneNumber;
  const RegisterUserInformationPage({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  _RegisterUserInformationPageState createState() =>
      _RegisterUserInformationPageState();
}

class _RegisterUserInformationPageState
    extends State<RegisterUserInformationPage> {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  String _pickImageUrl = '';

  late final RegisterUserInformationBloc _registerUserInformationBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _registerUserInformationBloc =
        BlocProvider.of<RegisterUserInformationBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    _nicknameController.dispose();
    _cityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterUserInformationBloc,
        RegisterUserInformationState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.plum,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 120,
                  ),
                  const AppLargeText(
                    text: 'User information',
                    color: AppColors.orange,
                    size: 40.0,
                  ),
                  EditableRoundAvatarWidget(
                    backgroundColor: AppColors.orange,
                    onImageChanged: (url) {
                      _pickImageUrl = url;
                    },
                  ).createWithProvider<EditableRoundAvatarBloc>(),
                  TextFieldWidget(
                    backgroundColor: AppColors.orange,
                    textColor: AppColors.plum,
                    hintText: 'Nickname',
                    controller: _nicknameController,
                  ),
                  TextFieldWidget(
                    backgroundColor: AppColors.orange,
                    textColor: AppColors.plum,
                    hintText: 'City',
                    controller: _cityController,
                  ),
                  ButtonWidget(
                    text: 'Next',
                    onTap: () => () {
                      _registerUserInformationBloc.add(
                        AddUserInformationEvent(
                          city: _cityController.text,
                          context: context,
                          nickname: _nicknameController.text,
                          phoneNumber: widget.phoneNumber,
                          pickImageUrl: _pickImageUrl,
                        ),
                      );
                    },
                    textColor: AppColors.plum,
                    buttonColor: AppColors.orange,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
