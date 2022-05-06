import 'package:csv/csv.dart';
import 'package:flutter/material.dart';

class LocationData {
  static Future<List<List<String>>> createLocationMap(
      BuildContext context) async {
    final localitiesString =
        await DefaultAssetBundle.of(context).loadString('assets/by.txt');
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(localitiesString, eol: '\n');
    final location = <List<String>>[];
    rowsAsListOfValues.forEach((value) {
      location.add(value.toString().split(';'));
    });
    return location;
  }
}
