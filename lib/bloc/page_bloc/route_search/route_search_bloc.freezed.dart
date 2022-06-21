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

  ShowLocationEvent showLocation({required BuildContext context}) {
    return ShowLocationEvent(
      context: context,
    );
  }

  ShowCalendarForSearchEvent showCalendar() {
    return const ShowCalendarForSearchEvent();
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
    required TResult Function(BuildContext context) showLocation,
    required TResult Function() showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRoutesEvent value) searchRoutes,
    required TResult Function(ChangeSaveRouteStatusEvent value)
        changeSaveRouteStatus,
    required TResult Function(ShowLocationEvent value) showLocation,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
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

class _$SearchRoutesEvent
    with DiagnosticableTreeMixin
    implements SearchRoutesEvent {
  const _$SearchRoutesEvent({required this.fromRoute, required this.toRoute});

  @override
  final String fromRoute;
  @override
  final String toRoute;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchEvent.searchRoutes(fromRoute: $fromRoute, toRoute: $toRoute)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchEvent.searchRoutes'))
      ..add(DiagnosticsProperty('fromRoute', fromRoute))
      ..add(DiagnosticsProperty('toRoute', toRoute));
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
    required TResult Function(BuildContext context) showLocation,
    required TResult Function() showCalendar,
  }) {
    return searchRoutes(fromRoute, toRoute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
  }) {
    return searchRoutes?.call(fromRoute, toRoute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
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
    required TResult Function(ShowLocationEvent value) showLocation,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
  }) {
    return searchRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
  }) {
    return searchRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
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

class _$ChangeSaveRouteStatusEvent
    with DiagnosticableTreeMixin
    implements ChangeSaveRouteStatusEvent {
  const _$ChangeSaveRouteStatusEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchEvent.changeSaveRouteStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RouteSearchEvent.changeSaveRouteStatus'));
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
    required TResult Function(BuildContext context) showLocation,
    required TResult Function() showCalendar,
  }) {
    return changeSaveRouteStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
  }) {
    return changeSaveRouteStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
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
    required TResult Function(ShowLocationEvent value) showLocation,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
  }) {
    return changeSaveRouteStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
  }) {
    return changeSaveRouteStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
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
abstract class $ShowLocationEventCopyWith<$Res> {
  factory $ShowLocationEventCopyWith(
          ShowLocationEvent value, $Res Function(ShowLocationEvent) then) =
      _$ShowLocationEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$ShowLocationEventCopyWithImpl<$Res>
    extends _$RouteSearchEventCopyWithImpl<$Res>
    implements $ShowLocationEventCopyWith<$Res> {
  _$ShowLocationEventCopyWithImpl(
      ShowLocationEvent _value, $Res Function(ShowLocationEvent) _then)
      : super(_value, (v) => _then(v as ShowLocationEvent));

  @override
  ShowLocationEvent get _value => super._value as ShowLocationEvent;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(ShowLocationEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ShowLocationEvent
    with DiagnosticableTreeMixin
    implements ShowLocationEvent {
  const _$ShowLocationEvent({required this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchEvent.showLocation(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchEvent.showLocation'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowLocationEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $ShowLocationEventCopyWith<ShowLocationEvent> get copyWith =>
      _$ShowLocationEventCopyWithImpl<ShowLocationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) searchRoutes,
    required TResult Function() changeSaveRouteStatus,
    required TResult Function(BuildContext context) showLocation,
    required TResult Function() showCalendar,
  }) {
    return showLocation(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
  }) {
    return showLocation?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) {
    if (showLocation != null) {
      return showLocation(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRoutesEvent value) searchRoutes,
    required TResult Function(ChangeSaveRouteStatusEvent value)
        changeSaveRouteStatus,
    required TResult Function(ShowLocationEvent value) showLocation,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
  }) {
    return showLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
  }) {
    return showLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    required TResult orElse(),
  }) {
    if (showLocation != null) {
      return showLocation(this);
    }
    return orElse();
  }
}

abstract class ShowLocationEvent implements RouteSearchEvent {
  const factory ShowLocationEvent({required BuildContext context}) =
      _$ShowLocationEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  $ShowLocationEventCopyWith<ShowLocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCalendarForSearchEventCopyWith<$Res> {
  factory $ShowCalendarForSearchEventCopyWith(ShowCalendarForSearchEvent value,
          $Res Function(ShowCalendarForSearchEvent) then) =
      _$ShowCalendarForSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowCalendarForSearchEventCopyWithImpl<$Res>
    extends _$RouteSearchEventCopyWithImpl<$Res>
    implements $ShowCalendarForSearchEventCopyWith<$Res> {
  _$ShowCalendarForSearchEventCopyWithImpl(ShowCalendarForSearchEvent _value,
      $Res Function(ShowCalendarForSearchEvent) _then)
      : super(_value, (v) => _then(v as ShowCalendarForSearchEvent));

  @override
  ShowCalendarForSearchEvent get _value =>
      super._value as ShowCalendarForSearchEvent;
}

/// @nodoc

class _$ShowCalendarForSearchEvent
    with DiagnosticableTreeMixin
    implements ShowCalendarForSearchEvent {
  const _$ShowCalendarForSearchEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchEvent.showCalendar()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchEvent.showCalendar'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowCalendarForSearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) searchRoutes,
    required TResult Function() changeSaveRouteStatus,
    required TResult Function(BuildContext context) showLocation,
    required TResult Function() showCalendar,
  }) {
    return showCalendar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
  }) {
    return showCalendar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? searchRoutes,
    TResult Function()? changeSaveRouteStatus,
    TResult Function(BuildContext context)? showLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) {
    if (showCalendar != null) {
      return showCalendar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchRoutesEvent value) searchRoutes,
    required TResult Function(ChangeSaveRouteStatusEvent value)
        changeSaveRouteStatus,
    required TResult Function(ShowLocationEvent value) showLocation,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
  }) {
    return showCalendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
  }) {
    return showCalendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchRoutesEvent value)? searchRoutes,
    TResult Function(ChangeSaveRouteStatusEvent value)? changeSaveRouteStatus,
    TResult Function(ShowLocationEvent value)? showLocation,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    required TResult orElse(),
  }) {
    if (showCalendar != null) {
      return showCalendar(this);
    }
    return orElse();
  }
}

abstract class ShowCalendarForSearchEvent implements RouteSearchEvent {
  const factory ShowCalendarForSearchEvent() = _$ShowCalendarForSearchEvent;
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

  ShowLocationState showLocation({required List<List<String>> locationMap}) {
    return ShowLocationState(
      locationMap: locationMap,
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
    required TResult Function(List<List<String>> locationMap) showLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InintRouteSearchPageState value) initPage,
    required TResult Function(ShowRoutesState value) showRoutes,
    required TResult Function(ShowLocationState value) showLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
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

class _$InintRouteSearchPageState
    with DiagnosticableTreeMixin
    implements InintRouteSearchPageState {
  const _$InintRouteSearchPageState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchState.initPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RouteSearchState.initPage'));
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
    required TResult Function(List<List<String>> locationMap) showLocation,
  }) {
    return initPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
  }) {
    return initPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
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
    required TResult Function(ShowLocationState value) showLocation,
  }) {
    return initPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
  }) {
    return initPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
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

class _$ShowRoutesState
    with DiagnosticableTreeMixin
    implements ShowRoutesState {
  const _$ShowRoutesState({required this.routesAndDates});

  @override
  final List<Map<String, String>> routesAndDates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchState.showRoutes(routesAndDates: $routesAndDates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchState.showRoutes'))
      ..add(DiagnosticsProperty('routesAndDates', routesAndDates));
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
    required TResult Function(List<List<String>> locationMap) showLocation,
  }) {
    return showRoutes(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
  }) {
    return showRoutes?.call(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
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
    required TResult Function(ShowLocationState value) showLocation,
  }) {
    return showRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
  }) {
    return showRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
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

/// @nodoc
abstract class $ShowLocationStateCopyWith<$Res> {
  factory $ShowLocationStateCopyWith(
          ShowLocationState value, $Res Function(ShowLocationState) then) =
      _$ShowLocationStateCopyWithImpl<$Res>;
  $Res call({List<List<String>> locationMap});
}

/// @nodoc
class _$ShowLocationStateCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res>
    implements $ShowLocationStateCopyWith<$Res> {
  _$ShowLocationStateCopyWithImpl(
      ShowLocationState _value, $Res Function(ShowLocationState) _then)
      : super(_value, (v) => _then(v as ShowLocationState));

  @override
  ShowLocationState get _value => super._value as ShowLocationState;

  @override
  $Res call({
    Object? locationMap = freezed,
  }) {
    return _then(ShowLocationState(
      locationMap: locationMap == freezed
          ? _value.locationMap
          : locationMap // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$ShowLocationState
    with DiagnosticableTreeMixin
    implements ShowLocationState {
  const _$ShowLocationState({required this.locationMap});

  @override
  final List<List<String>> locationMap;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchState.showLocation(locationMap: $locationMap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchState.showLocation'))
      ..add(DiagnosticsProperty('locationMap', locationMap));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowLocationState &&
            const DeepCollectionEquality()
                .equals(other.locationMap, locationMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationMap));

  @JsonKey(ignore: true)
  @override
  $ShowLocationStateCopyWith<ShowLocationState> get copyWith =>
      _$ShowLocationStateCopyWithImpl<ShowLocationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPage,
    required TResult Function(List<Map<String, String>> routesAndDates)
        showRoutes,
    required TResult Function(List<List<String>> locationMap) showLocation,
  }) {
    return showLocation(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
  }) {
    return showLocation?.call(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoutes,
    TResult Function(List<List<String>> locationMap)? showLocation,
    required TResult orElse(),
  }) {
    if (showLocation != null) {
      return showLocation(locationMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InintRouteSearchPageState value) initPage,
    required TResult Function(ShowRoutesState value) showRoutes,
    required TResult Function(ShowLocationState value) showLocation,
  }) {
    return showLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
  }) {
    return showLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InintRouteSearchPageState value)? initPage,
    TResult Function(ShowRoutesState value)? showRoutes,
    TResult Function(ShowLocationState value)? showLocation,
    required TResult orElse(),
  }) {
    if (showLocation != null) {
      return showLocation(this);
    }
    return orElse();
  }
}

abstract class ShowLocationState implements RouteSearchState {
  const factory ShowLocationState({required List<List<String>> locationMap}) =
      _$ShowLocationState;

  List<List<String>> get locationMap;
  @JsonKey(ignore: true)
  $ShowLocationStateCopyWith<ShowLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
