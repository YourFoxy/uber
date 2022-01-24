import 'package:flutter_test/flutter_test.dart';
import 'package:uber/scripts/text.dart';

void main() {
  test(('Removing extra spaces'), () {
    const val = '  string           to    test ';

    final res = AppText.upperFirstLetterAndDeleteExtraSpaces(val);
    expect(res, 'String to test');
  });
}
