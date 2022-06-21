import '../scripts/index.dart';

extension TextFieldForLocationExpension on TextFieldWidget {
  Widget createForLocation() {
    return BlocBuilder<TextFieldForLocationExpensionBloc,
        TextFieldForLocationExpensionState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            print('....................');
          },
          child: this,
        );
      },
    );
  }
}
