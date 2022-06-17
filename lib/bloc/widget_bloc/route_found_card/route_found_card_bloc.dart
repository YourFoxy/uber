import 'package:uber/scripts/index.dart';

part 'route_found_card_event.dart';
part 'route_found_card_state.dart';
part 'route_found_card_bloc.freezed.dart';

class RouteFoundCardBloc
    extends Bloc<RouteFoundCardEvent, RouteFoundCardState> {
  RouteFoundCardBloc() : super(const RouteFoundCardState.initWidget()) {
    on<ShowRouteEvent>(_onShowRouteEvent);
    on<ShowPhoneNumberEvent>(_onShowPhoneNumberEvent);
    on<CallEvent>(_onCallEvent);
  }

  _onShowRouteEvent(event, emit) {
    emit(const ShowRouteState());
  }

  _onShowPhoneNumberEvent(event, emit) {
    emit(const ShowPhoneNumberState());
  }

  _onCallEvent(event, emit) async {
    final numberUrl = Uri.parse('tel:${event.phoneNumber}');
    if (await launchUrl(numberUrl)) {
      await launchUrl(numberUrl);
    } else {
      throw "Can't phone that number.";
    }
  }
}
