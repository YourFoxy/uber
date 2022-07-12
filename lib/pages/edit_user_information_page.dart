import 'package:uber/scripts/index.dart';

class EditUserInformationPage extends StatefulWidget {
  const EditUserInformationPage({Key? key}) : super(key: key);

  @override
  State<EditUserInformationPage> createState() =>
      _EditUserInformationPageState();
}

class _EditUserInformationPageState extends State<EditUserInformationPage> {
  String _pickImageUrl = '';

  late final EditUserInformationBloc _editUserInformationBloc;

  final _nicknameTextKey = GlobalKey();
  final _cityTextKey = GlobalKey();

  TextEditingController get _nicknameController =>
      (_nicknameTextKey.currentWidget as TextField).controller!;
  TextEditingController get _cityController =>
      (_cityTextKey.currentWidget as TextField).controller!;

  @override
  void initState() {
    super.initState();
    _editUserInformationBloc =
        BlocProvider.of<EditUserInformationBloc>(context);
    _editUserInformationBloc.add(
      const EditUserInformationEvent.uploadNicknameAndCity(),
    );
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    _nicknameController.dispose();
    _cityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.plum,
        iconTheme: const IconThemeData(color: AppColors.orange),
        title: const AppTextStyle(
          text: 'Edit profile',
          color: AppColors.orange,
          size: 20,
        ),
      ),
      backgroundColor: AppColors.plum,
      body: BlocBuilder<EditUserInformationBloc, EditUserInformationState>(
        builder: (context, state) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EditableRectangularAvatarWidget(
                      onImageChanged: (url) {
                        _pickImageUrl = url;
                        setState(() {});
                      },
                    ).createWithProvider<EditableRectangularAvatarBloc>(),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFieldWidget(
                      borderColor: AppColors.orange,
                      textColor: AppColors.orange,
                      hintText: 'Nickname',
                      textKey: _nicknameTextKey,
                      controller: TextEditingController(
                        text: state is UploadNicknameAndCityState
                            ? state.nickname
                            : '',
                      ),
                    ),
                    TextFieldWidget(
                      borderColor: AppColors.orange,
                      textColor: AppColors.orange,
                      hintText: 'City',
                      textKey: _cityTextKey,
                      controller: TextEditingController(
                        text: state is UploadNicknameAndCityState
                            ? state.city
                            : '',
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: LongSaveButtonWidget(
                  function: () {
                    _editUserInformationBloc.add(
                      SaveUserInformationEvent(
                        nickname: _nicknameController.text,
                        city: _cityController.text,
                        pickImageUrl: _pickImageUrl,
                        context: context,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
