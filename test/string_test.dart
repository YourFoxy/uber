import 'package:flutter_test/flutter_test.dart';
import 'package:uber/scripts/text.dart';

void main() {
  test(('Removing extra spaces'), () {
    const val = '  String           to    test ';

    final res = UpdateAppText.MakeTextCorrect(val);
    expect(res, 'String to test');
  });
}