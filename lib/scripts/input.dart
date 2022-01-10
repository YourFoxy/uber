import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class NumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;
    final StringBuffer newText = new StringBuffer();
    if (newTextLength >= 1) {
      newText.write('+');
      if (newValue.selection.end >= 1) selectionIndex++;
    }
    if (newTextLength >= 4) {
      newText.write(newValue.text.substring(0, usedSubstringIndex = 3) + ' (');
      if (newValue.selection.end >= 3) selectionIndex += 2;
    }
    if (newTextLength >= 6) {
      newText.write(newValue.text.substring(3, usedSubstringIndex = 5) + ') ');
      if (newValue.selection.end >= 5) selectionIndex += 2;
    }
    if (newTextLength >= 9) {
      newText.write(newValue.text.substring(5, usedSubstringIndex = 8) + '-');
      if (newValue.selection.end >= 8) selectionIndex += 1;
    }
    if (newTextLength >= 11) {
      newText.write(newValue.text.substring(8, usedSubstringIndex = 10) + '-');
      if (newValue.selection.end >= 10) selectionIndex += 1;
    }
    // Dump the rest.
    if (newTextLength >= usedSubstringIndex)
      newText.write(newValue.text.substring(usedSubstringIndex));
    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}

class RemoveAllExtraSpacesTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    int selectionIndex = newValue.selection.end;

    String _newText = '';

    final StringBuffer newText = new StringBuffer();

    final reg = RegExp(r' +');
    if (reg.hasMatch(newValue.text)) {
      _newText = newValue.text.replaceAll(reg, ' ');
    } else {
      _newText = newValue.text;
    }

    newText.write(_newText);

    selectionIndex = _newText.length;

    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
