import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/home_page/home_page_bloc.dart';
import 'package:uber/bloc/long_save_button_widget/long_save_button_widget_event.dart';
import 'package:uber/bloc/long_save_button_widget/long_save_button_widget_state.dart';
import 'package:uber/extension/bloc_widget_extension.dart';
import 'package:uber/pages/home_page.dart';
import 'package:uber/scripts/user_data.dart';

class LongSaveButtonWidgetBloc
    extends Bloc<LongSaveButtonWidgetEvent, LongSaveButtonWidgetState> {
  LongSaveButtonWidgetBloc() : super(WidgetInitState()) {
    on<SaveUserInformationEvent>(
      (event, emit) async {
        await UserData.updateCurrentUserInformation(
            event.nickname, event.city, event.pickImageUrl);
        Navigator.push(
          event.context,
          MaterialPageRoute(
            builder: (context) =>
                const HomePage().createWithProvider<HomePageBloc>(),
          ),
        );
      },
    );
  }
}
