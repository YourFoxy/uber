import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/page_bloc/edit_user_information/edit_user_information_bloc.dart';
import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_bloc.dart';
import 'package:uber/extension/bloc_widget_extension.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_text.dart';
import 'package:uber/widgets/editable_rectangular_avatar_widget.dart';
import 'package:uber/widgets/long_save_button_widget.dart';
import 'package:uber/widgets/text_field_widget.dart';

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
                      backgroundColor: AppColors.orange,
                      textColor: AppColors.plum,
                      hintText: 'Nickname',
                      textKey: _nicknameTextKey,
                      controller: TextEditingController(
                        text: state is UploadNicknameAndCityState
                            ? state.nickname
                            : '',
                      ),
                    ),
                    TextFieldWidget(
                      backgroundColor: AppColors.orange,
                      textColor: AppColors.plum,
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
