// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uber/bloc/widget_bloc/editable_avatar/editable_round_avatar_bloc.dart';
// import 'package:uber/bloc/widget_bloc/editable_avatar/editable_round_avatar_event.dart';
// import 'package:uber/bloc/widget_bloc/editable_avatar/editable_round_avatar_state.dart';
// import 'package:uber/scripts/const.dart';

// import 'package:uber/scripts/image.dart';
// import 'package:uber/style/colors.dart';

import 'package:uber/scripts/index.dart';

class EditableRoundAvatarWidget extends StatefulWidget {
  final Color backgroundColor;
  final ValueChanged<String> onImageChanged;

  const EditableRoundAvatarWidget({
    Key? key,
    this.backgroundColor = AppColors.plum,
    required this.onImageChanged,
  }) : super(key: key);

  @override
  State<EditableRoundAvatarWidget> createState() =>
      _EditableRoundAvatarWidgetState();
}

class _EditableRoundAvatarWidgetState extends State<EditableRoundAvatarWidget> {
  late final EditableRoundAvatarBloc _editableRoundAvatarBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _editableRoundAvatarBloc =
        BlocProvider.of<EditableRoundAvatarBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditableRoundAvatarBloc, EditableRoundAvatarState>(
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
                  final url = await Avatar.pickImage();
                  _editableRoundAvatarBloc.add(
                    SetAvatarEvent(
                      url: url,
                    ),
                  );
                  widget.onImageChanged.call(url);
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: (state is AvatarUrlState)
                        ? DecorationImage(
                            image: FileImage(
                              File(
                                state.url,
                              ),
                            ),
                            fit: BoxFit.cover,
                          )
                        : const DecorationImage(
                            image: AssetImage(
                              carUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
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
