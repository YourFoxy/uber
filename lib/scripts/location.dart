import 'package:uber/scripts/index.dart';

class LocationData {
  static Future<List<List<String>>> createLocationMap() async {
    final localitiesString = await rootBundle.loadString('assets/by.txt');
    List<List<dynamic>> rowsAsListOfValues =
        const CsvToListConverter().convert(localitiesString, eol: '\n');
    final location = <List<String>>[];
    rowsAsListOfValues.forEach((value) {
      location.add(value.toString().split(';'));
    });
    return location;
  }
}
