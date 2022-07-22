import 'package:uber/scripts/index.dart';

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
  late final ViewAvatarBloc _viewAvatarBloc;

  @override
  void initState() {
    super.initState();
    _viewAvatarBloc = BlocProvider.of<ViewAvatarBloc>(context);
    _viewAvatarBloc.add(UploadViewAvatarEvent());
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
                  image: state is UploadViewAvatarState
                      ? DecorationImage(
                          image: NetworkImage(
                            state.url,
                          ),
                          fit: BoxFit.cover,
                        )
                      : const DecorationImage(
                          image: AssetImage(mapUrl),
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
