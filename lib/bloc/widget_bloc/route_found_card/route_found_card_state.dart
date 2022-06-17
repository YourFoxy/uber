part of 'route_found_card_bloc.dart';

@freezed
class RouteFoundCardState with _$RouteFoundCardState {
  const factory RouteFoundCardState.initWidget() = InitRouteFoundCardState;
  const factory RouteFoundCardState.showRoute() = ShowRouteState;
  const factory RouteFoundCardState.showPhoneNumber() = ShowPhoneNumberState;
}
