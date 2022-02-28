import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_bloc.dart';
import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_event.dart';
import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_state.dart';
import 'package:uber/scripts/image.dart';
import 'package:uber/style/colors.dart';

class EditableRectangularAvatarWidget extends StatefulWidget {
  final ValueChanged<String> onImageChanged;

  const EditableRectangularAvatarWidget(
      {Key? key, required this.onImageChanged})
      : super(key: key);

  @override
  State<EditableRectangularAvatarWidget> createState() =>
      _EditableRectangularAvatarWidgetState();
}

class _EditableRectangularAvatarWidgetState
    extends State<EditableRectangularAvatarWidget> {
  late final Bloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<EditableRectangularAvatarBloc>(context);
    _bloc.add(UploadAvatarEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditableRectangularAvatarBloc,
        EditableRectangularAvatarState>(
      builder: (context, state) {
        return InkWell(
          onTap: () async {
            final url = await Avatar.pickImage();
            _bloc.add(
              SetAvatarEvent(
                url: url,
              ),
            );
            widget.onImageChanged.call(url);
          },
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: AppColors.dark,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
              image: (state is PickImageState)
                  ? DecorationImage(
                      image: FileImage(
                        File(state.url),
                      ),
                      fit: BoxFit.cover,
                    )
                  : (state is UploadAvatarState)
                      ? DecorationImage(
                          image: NetworkImage(state.url),
                          fit: BoxFit.cover,
                        )
                      : const DecorationImage(
                          image: NetworkImage(''),
                          fit: BoxFit.cover,
                        ),
            ),
          ),
        );
      },
    );
  }
}
