import '../../../scripts/index.dart';

part 'text_field_for_location_expension_event.dart';
part 'text_field_for_location_expension_state.dart';
part 'text_field_for_location_expension_bloc.freezed.dart';

class TextFieldForLocationExpensionBloc extends Bloc<
    TextFieldForLocationExpensionEvent, TextFieldForLocationExpensionState> {
  TextFieldForLocationExpensionBloc() : super(const TextFieldInit()) {
    on<ShowLocationListEvent>((event, emit) {});
  }
}
