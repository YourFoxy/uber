// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RouteSearchEventTearOff {
  const _$RouteSearchEventTearOff();

  SearchRoutesEvent searchRoutes(
      {required String fromRoute, required String toRoute}) {
    return SearchRoutesEvent(
      fromRoute: fromRoute,
      toRoute: toRoute,
    );
  }

  ChangeSaveRouteStatusEvent changeSaveRouteStatus() {
    return const ChangeSaveRouteStatusEvent();
  }
}

/// @nodoc
const $RouteSearchEvent = _$RouteSearchEventTearOff();

/// @nodoc
mixin _$RouteSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) searchRoutes,
    required TResult Function() changeSaveRouteStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRoutesEvent value) searchRoutes,
    required TResult Function(ChangeSaveRouteStatusEvent value)
        changeSaveRouteStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteSearchEventCopyWith<$Res> {
  factory $RouteSearchEventCopyWith(
          RouteSearchEvent value, $Res Function(RouteSearchEvent) then) =
      _$RouteSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteSearchEventCopyWithImpl<$Res>
    implements $RouteSearchEventCopyWith<$Res> {
  _$RouteSearchEventCopyWithImpl(this._value, this._then);

  final RouteSearchEvent _value;
  // ignore: unused_field
  final $Res Function(RouteSearchEvent) _then;
}

/// @nodoc
abstract class $SearchRoutesEventCopyWith<$Res> {
  factory $SearchRoutesEventCopyWith(
          SearchRoutesEvent value, $Res Function(SearchRoutesEvent) then) =
      _$SearchRoutesEventCopyWithImpl<$Res>;
  $Res call({String fromRoute, String toRoute});
}

/// @nodoc
class _$SearchRoutesEventCopyWithImpl<$Res>
    extends _$RouteSearchEventCopyWithImpl<$Res>
    implements $SearchRoutesEventCopyWith<$Res> {
  _$SearchRoutesEventCopyWithImpl(
      SearchRoutesEvent _value, $Res Function(SearchRoutesEvent) _then)
      : super(_value, (v) => _then(v as SearchRoutesEvent));

  @override
  SearchRoutesEvent get _value => super._value as SearchRoutesEvent;

  @override
  $Res call({
    Object? fromRoute = freezed,
    Object? toRoute = freezed,
  }) {
    return _then(SearchRoutesEvent(
      fromRoute: fromRoute == freezed
          ? _value.fromRoute
          : fromRoute // ignore: cast_nullable_to_non_nullable
              as String,
      toRoute: toRoute == freezed
          ? _value.toRoute
          : toRoute // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchRoutesEvent implements SearchRoutesEvent {
  const _$SearchRoutesEvent({required this.fromRoute, required this.toRoute});

  @override
  final String fromRoute;
  @override
  final String toRoute;

  @override
  String toString() {
    return 'RouteSearchEvent.searchRoutes(fromRoute: $fromRoute, toRoute: $toRoute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchRoutesEvent &&
            const DeepCollectionEquality().equals(other.fromRoute, fromRoute) &&
            const DeepCollectionEquality().equals(other.toRoute, toRoute));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fromRoute),
      const DeepCollectionEquality().hash(toRoute));

  @JsonKey(ignore: true)
  @override
  $SearchRoutesEventCopyWith<SearchRoutesEvent> get copyWith =>
      _$SearchRoutesEventCopyWithImpl<SearchRoutesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) searchRoutes,
    required TResult Function() changeSaveRouteStatus,
  }) {
    return searchRoutes(fromRoute, toRoute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
  }) {
    return searchRoutes?.call(fromRoute, toRoute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    required TResult orElse(),
  }) {
    if (searchRoutes != null) {
      return searchRoutes(fromRoute, toRoute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRoutesEvent value) searchRoutes,
    required TResult Function(ChangeSaveRouteStatusEvent value)
        changeSaveRouteStatus,
  }) {
    return searchRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
  }) {
    return searchRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    required TResult orElse(),
  }) {
    if (searchRoutes != null) {
      return searchRoutes(this);
    }
    return orElse();
  }
}

abstract class SearchRoutesEvent implements RouteSearchEvent {
  const factory SearchRoutesEvent(
      {required String fromRoute,
      required String toRoute}) = _$SearchRoutesEvent;

  String get fromRoute;
  String get toRoute;
  @JsonKey(ignore: true)
  $SearchRoutesEventCopyWith<SearchRoutesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeSaveRouteStatusEventCopyWith<$Res> {
  factory $ChangeSaveRouteStatusEventCopyWith(ChangeSaveRouteStatusEvent value,
          $Res Function(ChangeSaveRouteStatusEvent) then) =
      _$ChangeSaveRouteStatusEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeSaveRouteStatusEventCopyWithImpl<$Res>
    extends _$RouteSearchEventCopyWithImpl<$Res>
    implements $ChangeSaveRouteStatusEventCopyWith<$Res> {
  _$ChangeSaveRouteStatusEventCopyWithImpl(ChangeSaveRouteStatusEvent _value,
      $Res Function(ChangeSaveRouteStatusEvent) _then)
      : super(_value, (v) => _then(v as ChangeSaveRouteStatusEvent));

  @override
  ChangeSaveRouteStatusEvent get _value =>
      super._value as ChangeSaveRouteStatusEvent;
}

/// @nodoc

class _$ChangeSaveRouteStatusEvent implements ChangeSaveRouteStatusEvent {
  const _$ChangeSaveRouteStatusEvent();

  @override
  String toString() {
    return 'RouteSearchEvent.changeSaveRouteStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeSaveRouteStatusEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) searchRoutes,
    required TResult Function() changeSaveRouteStatus,
  }) {
    return changeSaveRouteStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
  }) {
    return changeSaveRouteStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    required TResult orElse(),
  }) {
    if (changeSaveRouteStatus != null) {
      return changeSaveRouteStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRoutesEvent value) searchRoutes,
    required TResult Function(ChangeSaveRouteStatusEvent value)
        changeSaveRouteStatus,
  }) {
    return changeSaveRouteStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
  }) {
    return changeSaveRouteStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    required TResult orElse(),
  }) {
    if (changeSaveRouteStatus != null) {
      return changeSaveRouteStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeSaveRouteStatusEvent implements RouteSearchEvent {
  const factory ChangeSaveRouteStatusEvent() = _$ChangeSaveRouteStatusEvent;
}

/// @nodoc
class _$RouteSearchStateTearOff {
  const _$RouteSearchStateTearOff();

  InintRouteSearchPageState initPage() {
    return const InintRouteSearchPageState();
  }

  ShowRoutesState showRoutes(
      {required List<Map<String, String>> routesAndDates}) {
    return ShowRoutesState(
      routesAndDates: routesAndDates,
    );
  }
}

/// @nodoc
const $RouteSearchState = _$RouteSearchStateTearOff();

/// @nodoc
mixin _$RouteSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPage,
    required TResult Function(List<Map<String, String>> routesAndDates)
        showRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InintRouteSearchPageState value) initPage,
    required TResult Function(ShowRoutesState value) showRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteSearchStateCopyWith<$Res> {
  factory $RouteSearchStateCopyWith(
          RouteSearchState value, $Res Function(RouteSearchState) then) =
      _$RouteSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteSearchStateCopyWithImpl<$Res>
    implements $RouteSearchStateCopyWith<$Res> {
  _$RouteSearchStateCopyWithImpl(this._value, this._then);

  final RouteSearchState _value;
  // ignore: unused_field
  final $Res Function(RouteSearchState) _then;
}

/// @nodoc
abstract class $InintRouteSearchPageStateCopyWith<$Res> {
  factory $InintRouteSearchPageStateCopyWith(InintRouteSearchPageState value,
          $Res Function(InintRouteSearchPageState) then) =
      _$InintRouteSearchPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InintRouteSearchPageStateCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res>
    implements $InintRouteSearchPageStateCopyWith<$Res> {
  _$InintRouteSearchPageStateCopyWithImpl(InintRouteSearchPageState _value,
      $Res Function(InintRouteSearchPageState) _then)
      : super(_value, (v) => _then(v as InintRouteSearchPageState));

  @override
  InintRouteSearchPageState get _value =>
      super._value as InintRouteSearchPageState;
}

/// @nodoc

class _$InintRouteSearchPageState implements InintRouteSearchPageState {
  const _$InintRouteSearchPageState();

  @override
  String toString() {
    return 'RouteSearchState.initPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InintRouteSearchPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPage,
    required TResult Function(List<Map<String, String>> routesAndDates)
        showRoutes,
  }) {
    return initPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
  }) {
    return initPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    required TResult orElse(),
  }) {
    if (initPage != null) {
      return initPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InintRouteSearchPageState value) initPage,
    required TResult Function(ShowRoutesState value) showRoutes,
  }) {
    return initPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
  }) {
    return initPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    required TResult orElse(),
  }) {
    if (initPage != null) {
      return initPage(this);
    }
    return orElse();
  }
}

abstract class InintRouteSearchPageState implements RouteSearchState {
  const factory InintRouteSearchPageState() = _$InintRouteSearchPageState;
}

/// @nodoc
abstract class $ShowRoutesStateCopyWith<$Res> {
  factory $ShowRoutesStateCopyWith(
          ShowRoutesState value, $Res Function(ShowRoutesState) then) =
      _$ShowRoutesStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, String>> routesAndDates});
}

/// @nodoc
class _$ShowRoutesStateCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res>
    implements $ShowRoutesStateCopyWith<$Res> {
  _$ShowRoutesStateCopyWithImpl(
      ShowRoutesState _value, $Res Function(ShowRoutesState) _then)
      : super(_value, (v) => _then(v as ShowRoutesState));

  @override
  ShowRoutesState get _value => super._value as ShowRoutesState;

  @override
  $Res call({
    Object? routesAndDates = freezed,
  }) {
    return _then(ShowRoutesState(
      routesAndDates: routesAndDates == freezed
          ? _value.routesAndDates
          : routesAndDates // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$ShowRoutesState implements ShowRoutesState {
  const _$ShowRoutesState({required this.routesAndDates});

  @override
  final List<Map<String, String>> routesAndDates;

  @override
  String toString() {
    return 'RouteSearchState.showRoutes(routesAndDates: $routesAndDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowRoutesState &&
            const DeepCollectionEquality()
                .equals(other.routesAndDates, routesAndDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(routesAndDates));

  @JsonKey(ignore: true)
  @override
  $ShowRoutesStateCopyWith<ShowRoutesState> get copyWith =>
      _$ShowRoutesStateCopyWithImpl<ShowRoutesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPage,
    required TResult Function(List<Map<String, String>> routesAndDates)
        showRoutes,
  }) {
    return showRoutes(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
  }) {
    return showRoutes?.call(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    required TResult orElse(),
  }) {
    if (showRoutes != null) {
      return showRoutes(routesAndDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InintRouteSearchPageState value) initPage,
    required TResult Function(ShowRoutesState value) showRoutes,
  }) {
    return showRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
  }) {
    return showRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    required TResult orElse(),
  }) {
    if (showRoutes != null) {
      return showRoutes(this);
    }
    return orElse();
  }
}

abstract class ShowRoutesState implements RouteSearchState {
  const factory ShowRoutesState(
      {required List<Map<String, String>> routesAndDates}) = _$ShowRoutesState;

  List<Map<String, String>> get routesAndDates;
  @JsonKey(ignore: true)
  $ShowRoutesStateCopyWith<ShowRoutesState> get copyWith =>
      throw _privateConstructorUsedError;
}
