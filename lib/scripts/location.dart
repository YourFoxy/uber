import 'package:csv/csv.dart';
import 'package:flutter/material.dart';

class LocationData {
  static Future<List<List<String>>> createLocationMap(
      BuildContext context) async {
    final String localitiesString =
        await DefaultAssetBundle.of(context).loadString('assets/by.txt');
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(localitiesString, eol: '\n');
    List<List<String>> location = [];
    rowsAsListOfValues.forEach((value) {
      location.add(value.toString().split(';'));
    });
    return location;
  }
}
