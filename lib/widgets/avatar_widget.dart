import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/bloc/avatar_widget_bloc.dart';
import 'package:uber/bloc/event/avatar_widget_event.dart';
import 'package:uber/bloc/state/avatar_widget_state.dart';
import 'package:uber/scripts/image.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/my_avatar_view_widget.dart';

class AvatarWidget extends StatefulWidget {
  Function(String) function;
  final Color backgroundColor;

  AvatarWidget({
    Key? key,
    required this.function,
    this.backgroundColor = AppColors.plum,
  }) : super(key: key);

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AvatarWidgetBloc(),
      child: BlocBuilder<AvatarWidgetBloc, AvatarWidgetState>(
        builder: (context, state) {
          final _bloc = BlocProvider.of<AvatarWidgetBloc>(context);
          return Container(
            margin: const EdgeInsets.all(20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: widget.backgroundColor,
                ),
                InkWell(
                  onTap: () async {
                    _bloc.add(
                      SetAvatarEvent(
                        url: await Avatar.pickImage(),
                        function: widget.function,
                      ),
                    );
                  },
                  child: MyAvatarView(
                    pickImageUrl: (state is AvatarUrlState) ? state.url : '',
                    radius: 75,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
