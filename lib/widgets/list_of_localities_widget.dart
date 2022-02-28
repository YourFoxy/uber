import 'package:flutter/material.dart';
import 'package:uber/scripts/const.dart';
import 'package:uber/style/colors.dart';
import 'package:uber/widgets/app_large_text.dart';
import 'package:uber/widgets/app_text.dart';

class ListOfLocalotiesWidget extends StatelessWidget {
  final Map<dynamic, List<String>> localities;
  final String searchLocationString;
  final ValueChanged<String> onRouteChanged;

  const ListOfLocalotiesWidget({
    Key? key,
    required this.localities,
    required this.searchLocationString,
    required this.onRouteChanged,
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
              itemCount: localities.length,
              itemBuilder: (context, index) {
                return localities[index]![locationIndex]
                        .startsWith(searchLocationString)
                    ? InkWell(
                        onTap: () {
                          onRouteChanged
                              .call(localities[index]![locationIndex]);
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AppLargeText(
                                text: localities[index]![locationIndex],
                                color: AppColors.orange,
                              ),
                            ),
                            AppTextStyle(
                                text:
                                    '${localities[index]![regionIndex]} область, ${localities[index]![districtIndex]} район'),
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
                      )
                    : const SizedBox();
              }),
        ),
      ),
    );
  }
}
