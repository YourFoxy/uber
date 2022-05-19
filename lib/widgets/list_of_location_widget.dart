// import 'package:flutter/material.dart';
// import 'package:uber/scripts/const.dart';
// import 'package:uber/style/colors.dart';
// import 'package:uber/widgets/app_large_text.dart';
// import 'package:uber/widgets/app_text.dart';
import 'package:uber/scripts/index.dart';

class ListOfLocationWidget extends StatelessWidget {
  final List<List<String>> locations;
  final String searchLocationString;
  final ValueChanged<String> onRouteChanged;

  const ListOfLocationWidget({
    required this.locations,
    required this.searchLocationString,
    required this.onRouteChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          height: 320,
          width: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.plum2.withOpacity(0.9),
          ),
          child: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              if (!locations[index][locationIndex]
                  .startsWith(searchLocationString)) {
                return const SizedBox();
              }
              return InkWell(
                onTap: () {
                  onRouteChanged.call(locations[index][locationIndex]);
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppLargeText(
                        text: locations[index][locationIndex],
                        color: AppColors.orange,
                      ),
                    ),
                    AppTextStyle(
                        text:
                            '${locations[index][regionIndex]} область, ${locations[index][districtIndex]} район'),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        height: 20,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                        color: AppColors.orange,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
