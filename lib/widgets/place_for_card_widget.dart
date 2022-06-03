import 'package:uber/scripts/index.dart';

class PlaceForCardWidget extends StatefulWidget {
  final String text;
  final String nameCollection;
  const PlaceForCardWidget({
    Key? key,
    required this.text,
    required this.nameCollection,
  }) : super(key: key);

  @override
  State<PlaceForCardWidget> createState() => _PlaceForCardWidgetState();
}

class _PlaceForCardWidgetState extends State<PlaceForCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            alignment: Alignment.centerLeft,
            child: AppTextStyle(
              text: widget.text,
              size: 18,
            ),
          ),
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.plum2,
              borderRadius: BorderRadius.circular(30),
            ),
            child: RouteCard(
              nameCollection: widget.nameCollection,
            ).createWithProvider<RouteCardBloc>(),
          ),
        ],
      ),
    );
  }
}
