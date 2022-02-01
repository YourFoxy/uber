import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/editable_avatar/editable_avatar_bloc.dart';
import 'package:uber/bloc/editable_avatar/editable_avatar_event.dart';
import 'package:uber/bloc/editable_avatar/editable_avatar_state.dart';

import 'package:uber/scripts/image.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/editable_my_avatar_view_widget.dart';

class EditableAvatarWidget extends StatefulWidget {
  Function(String) function;
  final Color backgroundColor;

  EditableAvatarWidget({
    Key? key,
    required this.function,
    this.backgroundColor = AppColors.plum,
  }) : super(key: key);

  @override
  State<EditableAvatarWidget> createState() => _EditableAvatarWidgetState();
}

class _EditableAvatarWidgetState extends State<EditableAvatarWidget> {
  late final _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BlocProvider.of<EditableAvatarBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditableAvatarBloc, EditableAvatarState>(
      builder: (context, state) {
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
                child: EditableMyAvatarView(
                  pickImageUrl: (state is AvatarUrlState) ? state.url : '',
                  radius: 75,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
