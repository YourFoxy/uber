part of 'route_found_card_bloc.dart';

@freezed
class RouteFoundCardEvent with _$RouteFoundCardEvent {
  const factory RouteFoundCardEvent.showRoute() = ShowRouteEvent;
  const factory RouteFoundCardEvent.showPhoneNumber() = ShowPhoneNumberEvent;
  const factory RouteFoundCardEvent.call({required String phoneNumber}) = CallEvent;
}
