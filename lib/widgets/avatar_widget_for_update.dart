import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/avatar_widget_for_update/avatar_widget_event_for_update.dart';
import 'package:uber/bloc/avatar_widget_for_update/avatar_widget_for_update_bloc.dart';
import 'package:uber/bloc/avatar_widget_for_update/avatar_widget_state_for_update.dart';
import 'package:uber/scripts/image.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/my_avatar_view_widget_for_update.dart';

class AvatarWidgetForUpdate extends StatefulWidget {
  Function(String) function;
  final Color backgroundColor;

  AvatarWidgetForUpdate({
    Key? key,
    required this.function,
    this.backgroundColor = AppColors.plum,
  }) : super(key: key);

  @override
  State<AvatarWidgetForUpdate> createState() => _AvatarWidgetForUpdateState();
}

class _AvatarWidgetForUpdateState extends State<AvatarWidgetForUpdate> {
  late final _bloc;

  @override
  void didChangeDependencies() {
    _bloc = BlocProvider.of<AvatarWidgetForUpdateBloc>;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AvatarWidgetForUpdateBloc(),
      child: BlocBuilder<AvatarWidgetForUpdateBloc, AvatarWidgetForUpdateState>(
        builder: (context, state) {
          // final _bloc = BlocProvider.of<AvatarWidgetForUpdateBloc>(context);
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
                    _bloc(context).add(
                      SetAvatarEvent(
                        url: await Avatar.pickImage(),
                        function: widget.function,
                      ),
                    );
                  },
                  child: MyAvatarViewForUpdate(
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
