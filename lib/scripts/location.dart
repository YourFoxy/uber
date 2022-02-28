import 'package:csv/csv.dart';
import 'package:flutter/material.dart';

class LocationData {
  static Future<Map<dynamic, List<String>>> createLocationMap(
      BuildContext context) async {
    final Map<dynamic, List<String>> locationMap = {};
    final String localitiesString =
        await DefaultAssetBundle.of(context).loadString('assets/by.txt');
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(localitiesString);

    List<String> locationList;

    for (int i = 0; i < rowsAsListOfValues.length; i++) {
      locationList = rowsAsListOfValues[i].toString().split(';');

      locationMap[i] = locationList;
    }
    return locationMap;
  }
}
