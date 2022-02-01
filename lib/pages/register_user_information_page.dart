import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/editable_avatar/editable_avatar_bloc.dart';
import 'package:uber/bloc/register_user_information_page/register_user_information_page_bloc.dart';
import 'package:uber/bloc/register_user_information_page/register_user_information_page_event.dart';
import 'package:uber/bloc/register_user_information_page/register_user_information_page_state.dart';
import 'package:uber/extensionBloc/bloc_widget.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/editable_avatar_widget.dart';
import 'package:uber/widgets/button_widget.dart';
import 'package:uber/widgets/text_field_widget.dart';

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

  late final _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<RegisterUserInformationPageBloc>;
  }

  @override
  void dispose() {
    super.dispose();
    _nicknameController.dispose();
    _cityController.dispose();
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterUserInformationPageBloc,
        RegisterUserInformationPageState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.orange,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 120,
                  ),
                  const AppLargeText(
                    text: 'User information',
                    color: AppColors.plum,
                    size: 40.0,
                  ),
                  EditableAvatarWidget(
                    function: (String url) async {
                      setState(() {
                        _pickImageUrl = url;
                      });
                    },
                  ).createWithProvider<EditableAvatarBloc>(),
                  TextFieldWidget(
                    hintText: 'Nickname',
                    controller: _nicknameController,
                  ),
                  TextFieldWidget(
                    hintText: 'City',
                    controller: _cityController,
                  ),
                  ButtonWidget(
                    text: 'Next',
                    onTap: () => () {
                      _bloc(context).add(
                        AddUserInformationEvent(
                          city: _cityController.text,
                          context: context,
                          nickname: _nicknameController.text,
                          phoneNumber: widget.phoneNumber,
                          pickImageUrl: _pickImageUrl,
                        ),
                      );
                    },
                    textColor: AppColors.orange,
                    buttonColor: AppColors.plum,
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
