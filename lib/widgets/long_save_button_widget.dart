import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/long_save_button_widget/long_save_button_widget_bloc.dart';
import 'package:uber/bloc/long_save_button_widget/long_save_button_widget_event.dart';
import 'package:uber/bloc/long_save_button_widget/long_save_button_widget_state.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';

class LongSaveButtonWidget extends StatefulWidget {
  final String imageUrl;
  final String nickname;
  final String city;
  LongSaveButtonWidget(
      {Key? key,
      required this.imageUrl,
      required this.nickname,
      required this.city})
      : super(key: key);

  @override
  State<LongSaveButtonWidget> createState() => _LongSaveButtonWidgetState();
}

class _LongSaveButtonWidgetState extends State<LongSaveButtonWidget> {
  late final _bloc;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _bloc = BlocProvider.of<LongSaveButtonWidgetBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LongSaveButtonWidgetBloc, LongSaveButtonWidgetState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 70,
            width: double.infinity,
            color: AppColors.dark,
            child: InkWell(
              splashColor: Colors.amber,
              onTap: () {
                _bloc.add(
                  SaveUserInformationEvent(
                    nickname: widget.nickname,
                    city: widget.city,
                    pickImageUrl: widget.imageUrl,
                    context: context,
                  ),
                );
              },
              child: const Center(
                child: AppLargeText(
                  text: 'Save',
                  color: AppColors.orange,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
