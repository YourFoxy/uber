import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/bloc/register_user_information_page_bloc.dart';
import 'package:uber/bloc/event/register_user_information_page_event.dart';
import 'package:uber/bloc/state/register_user_information_page_state.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/scripts/user_data.dart';
import 'package:uber/scripts/widgets.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/avatar_widget.dart';
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

  String pickImageUrl = '';

  @override
  void dispose() {
    _nicknameController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterUserInformationPageBloc(),
      child: BlocBuilder<RegisterUserInformationPageBloc,
          RegisterUserInformationPageState>(
        builder: (context, state) {
          final _bloc =
              BlocProvider.of<RegisterUserInformationPageBloc>(context);
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
                    AvatarWidget(
                      function: (String url) async {
                        setState(() {
                          pickImageUrl = url;
                        });
                      },
                    ),
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
                        _bloc.add(
                          AddUserInformationEvent(
                            city: _cityController.text,
                            context: context,
                            nickname: _nicknameController.text,
                            phoneNumber: widget.phoneNumber,
                            pickImageUrl: pickImageUrl,
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
      ),
    );
  }
}
