import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uber/bloc/avatar_widget_for_view/avatar_widget_for_view_bloc.dart';
import 'package:uber/bloc/avatar_widget_for_view/avatar_widget_for_view_event.dart';
import 'package:uber/bloc/avatar_widget_for_view/avatar_widget_for_view_state.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/my_avatar_view_widget_for_view.dart';
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
  void didChangeDependencies() {
    _bloc = BlocProvider.of<AvatarWidgetForViewBloc>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AvatarWidgetForViewBloc(),
      child: BlocBuilder<AvatarWidgetForViewBloc, AvatarWidgetForViewState>(
        builder: (context, state) {
          _bloc(context).add(UploadAvatarEvent());
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 74,
                  backgroundColor: widget.backgroundColor,
                ),
                MyAvatarViewForView(
                  imageUrlFromStorage:
                      state is UploadAvatarState ? state.url : ' ',
                  radius: 69,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
