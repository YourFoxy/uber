import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/bloc/widget_bloc/editable_rectangular_avatar/editable_rectangular_avatar_bloc.dart';
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
  late final Bloc _editableRectangularAvatarBloc;

  @override
  void initState() {
    super.initState();
    _editableRectangularAvatarBloc =
        BlocProvider.of<EditableRectangularAvatarBloc>(context);
    _editableRectangularAvatarBloc.add(const UploadAvatarEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditableRectangularAvatarBloc,
        EditableRectangularAvatarState>(
      builder: (context, state) {
        return InkWell(
          onTap: () async {
            final url = await Avatar.pickImage();
            _editableRectangularAvatarBloc.add(
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
              image: state.when(
                widgetInit: () => const DecorationImage(
                  image: NetworkImage(
                      'https://sun9-54.userapi.com/impf/g5URL63RL6vg9C8SkSJ_rkpX4VIMuHQgQDXepQ/HBi5PKBgZaY.jpg?size=563x565&quality=95&sign=e16cb95d9bfbf8bae2c87c0e8dda99c6&type=album'),
                  fit: BoxFit.cover,
                ),
                uploadAvatar: (url) => DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
                pickImage: (url) => DecorationImage(
                  image: FileImage(
                    File(url),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
