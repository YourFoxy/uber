import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/edit_user_information_page/edit_user_information_page_bloc.dart';
import 'package:uber/bloc/edit_user_information_page/edit_user_information_page_event.dart';
import 'package:uber/bloc/edit_user_information_page/edit_user_information_page_state.dart';
import 'package:uber/bloc/editable_rectangular_avatar/editable_rectangular_avatar_bloc.dart';
import 'package:uber/bloc/long_save_button_widget/long_save_button_widget_bloc.dart';
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
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  late final _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<EditUserInformationPageBloc>(context);
    _bloc.add(
      UploadNicknameAndCityEvent(
          nicknameController: _nicknameController,
          cityController: _cityController),
    );
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
      body: BlocBuilder<EditUserInformationPageBloc,
          EditUserInformationPageState>(
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
                      controller: _nicknameController,
                    ),
                    TextFieldWidget(
                      backgroundColor: AppColors.orange,
                      textColor: AppColors.plum,
                      hintText: 'City',
                      controller: _cityController,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: LongSaveButtonWidget(
                  imageUrl: _pickImageUrl,
                  nickname: _nicknameController.text,
                  city: _cityController.text,
                ).createWithProvider<LongSaveButtonWidgetBloc>(),
              ),
            ],
          );
        },
      ),
    );
  }
}
