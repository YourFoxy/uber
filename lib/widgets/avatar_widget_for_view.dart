import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uber/bloc/widget_bloc/view_avatar/view_avatar_bloc.dart';
import 'package:uber/bloc/widget_bloc/view_avatar/view_avatar_event.dart';
import 'package:uber/bloc/widget_bloc/view_avatar/view_avatar_state.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/style/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AvatarWidgetForView extends StatefulWidget {
  final Color backgroundColor;

  const AvatarWidgetForView({
    Key? key,
    this.backgroundColor = AppColors.orange,
  }) : super(key: key);

  @override
  State<AvatarWidgetForView> createState() => _AvatarWidgetForViewState();
}

class _AvatarWidgetForViewState extends State<AvatarWidgetForView> {
  late final _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<ViewAvatarBloc>(context);
    _bloc.add(UploadAvatarEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewAvatarBloc, ViewAvatarState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 74,
                backgroundColor: widget.backgroundColor,
              ),
              Container(
                height: 138,
                width: 138,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: state is UploadAvatarState
                      ? DecorationImage(
                          image: NetworkImage(
                            state.url,
                          ),
                          fit: BoxFit.cover,
                        )
                      : const DecorationImage(
                          image: AssetImage(carUrl),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
