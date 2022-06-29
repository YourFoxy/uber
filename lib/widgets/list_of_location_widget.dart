import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:uber/scripts/index.dart';

class ListOfLocationWidget extends StatelessWidget {
  final List<List<String>> locations;
  final String searchLocationString;
  final ValueChanged<String> onRouteChanged;
  final Function onClose;

  const ListOfLocationWidget({
    required this.locations,
    required this.searchLocationString,
    required this.onRouteChanged,
    required this.onClose,
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
          child: Stack(
            children: [
              ListView.builder(
                itemCount: locations.length,
                padding: EdgeInsets.only(
                  top: 15,
                ),
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
              // Padding(
              //  padding: const EdgeInsets.all(10.0),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 35,
                  width: 35,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.dark,
                  ),
                  child: IconButton(
                    onPressed: () => onClose(),
                    icon: Icon(
                      Icons.close,
                      color: AppColors.red,
                    ),
                  ),
                ),
              ),
              // IconB),
            ],
          ),
        ),
      ),
    );
  }
}
