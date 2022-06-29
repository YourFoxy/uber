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
          child: Stack(
            children: [
              this,
              Center(
                child: Container(
                  height: 500,
                  width: 100,
                  color: AppColors.dark,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
