// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RouteCreationEventTearOff {
  const _$RouteCreationEventTearOff();

  ShowLocationForDeparturePointEvent showLocationForDeparturePoint(
      {required BuildContext context}) {
    return ShowLocationForDeparturePointEvent(
      context: context,
    );
  }

  ShowLocationForArrivalPointEvent showLocationForArrivalPoint(
      {required BuildContext context}) {
    return ShowLocationForArrivalPointEvent(
      context: context,
    );
  }

  CloseLocationEvent closeLocation() {
    return const CloseLocationEvent();
  }

  AddRouteEvent addRoute(
      {required String departurePoint,
      required String arrivalPoint,
      required String date,
      required BuildContext context}) {
    return AddRouteEvent(
      departurePoint: departurePoint,
      arrivalPoint: arrivalPoint,
      date: date,
      context: context,
    );
  }

  ShowCalendarEvent showCalendarEvent() {
    return const ShowCalendarEvent();
  }
}

/// @nodoc
const $RouteCreationEvent = _$RouteCreationEventTearOff();

/// @nodoc
mixin _$RouteCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        showLocationForDeparturePoint,
    required TResult Function(BuildContext context) showLocationForArrivalPoint,
    required TResult Function() closeLocation,
    required TResult Function(String departurePoint, String arrivalPoint,
            String date, BuildContext context)
        addRoute,
    required TResult Function() showCalendarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLocationForDeparturePointEvent value)
        showLocationForDeparturePoint,
    required TResult Function(ShowLocationForArrivalPointEvent value)
        showLocationForArrivalPoint,
    required TResult Function(CloseLocationEvent value) closeLocation,
    required TResult Function(AddRouteEvent value) addRoute,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCreationEventCopyWith<$Res> {
  factory $RouteCreationEventCopyWith(
          RouteCreationEvent value, $Res Function(RouteCreationEvent) then) =
      _$RouteCreationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteCreationEventCopyWithImpl<$Res>
    implements $RouteCreationEventCopyWith<$Res> {
  _$RouteCreationEventCopyWithImpl(this._value, this._then);

  final RouteCreationEvent _value;
  // ignore: unused_field
  final $Res Function(RouteCreationEvent) _then;
}

/// @nodoc
abstract class $ShowLocationForDeparturePointEventCopyWith<$Res> {
  factory $ShowLocationForDeparturePointEventCopyWith(
          ShowLocationForDeparturePointEvent value,
          $Res Function(ShowLocationForDeparturePointEvent) then) =
      _$ShowLocationForDeparturePointEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$ShowLocationForDeparturePointEventCopyWithImpl<$Res>
    extends _$RouteCreationEventCopyWithImpl<$Res>
    implements $ShowLocationForDeparturePointEventCopyWith<$Res> {
  _$ShowLocationForDeparturePointEventCopyWithImpl(
      ShowLocationForDeparturePointEvent _value,
      $Res Function(ShowLocationForDeparturePointEvent) _then)
      : super(_value, (v) => _then(v as ShowLocationForDeparturePointEvent));

  @override
  ShowLocationForDeparturePointEvent get _value =>
      super._value as ShowLocationForDeparturePointEvent;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(ShowLocationForDeparturePointEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ShowLocationForDeparturePointEvent
    with DiagnosticableTreeMixin
    implements ShowLocationForDeparturePointEvent {
  const _$ShowLocationForDeparturePointEvent({required this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationEvent.showLocationForDeparturePoint(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RouteCreationEvent.showLocationForDeparturePoint'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowLocationForDeparturePointEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $ShowLocationForDeparturePointEventCopyWith<
          ShowLocationForDeparturePointEvent>
      get copyWith => _$ShowLocationForDeparturePointEventCopyWithImpl<
          ShowLocationForDeparturePointEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        showLocationForDeparturePoint,
    required TResult Function(BuildContext context) showLocationForArrivalPoint,
    required TResult Function() closeLocation,
    required TResult Function(String departurePoint, String arrivalPoint,
            String date, BuildContext context)
        addRoute,
    required TResult Function() showCalendarEvent,
  }) {
    return showLocationForDeparturePoint(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
  }) {
    return showLocationForDeparturePoint?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (showLocationForDeparturePoint != null) {
      return showLocationForDeparturePoint(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLocationForDeparturePointEvent value)
        showLocationForDeparturePoint,
    required TResult Function(ShowLocationForArrivalPointEvent value)
        showLocationForArrivalPoint,
    required TResult Function(CloseLocationEvent value) closeLocation,
    required TResult Function(AddRouteEvent value) addRoute,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
  }) {
    return showLocationForDeparturePoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
  }) {
    return showLocationForDeparturePoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (showLocationForDeparturePoint != null) {
      return showLocationForDeparturePoint(this);
    }
    return orElse();
  }
}

abstract class ShowLocationForDeparturePointEvent
    implements RouteCreationEvent {
  const factory ShowLocationForDeparturePointEvent(
      {required BuildContext context}) = _$ShowLocationForDeparturePointEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  $ShowLocationForDeparturePointEventCopyWith<
          ShowLocationForDeparturePointEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowLocationForArrivalPointEventCopyWith<$Res> {
  factory $ShowLocationForArrivalPointEventCopyWith(
          ShowLocationForArrivalPointEvent value,
          $Res Function(ShowLocationForArrivalPointEvent) then) =
      _$ShowLocationForArrivalPointEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$ShowLocationForArrivalPointEventCopyWithImpl<$Res>
    extends _$RouteCreationEventCopyWithImpl<$Res>
    implements $ShowLocationForArrivalPointEventCopyWith<$Res> {
  _$ShowLocationForArrivalPointEventCopyWithImpl(
      ShowLocationForArrivalPointEvent _value,
      $Res Function(ShowLocationForArrivalPointEvent) _then)
      : super(_value, (v) => _then(v as ShowLocationForArrivalPointEvent));

  @override
  ShowLocationForArrivalPointEvent get _value =>
      super._value as ShowLocationForArrivalPointEvent;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(ShowLocationForArrivalPointEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ShowLocationForArrivalPointEvent
    with DiagnosticableTreeMixin
    implements ShowLocationForArrivalPointEvent {
  const _$ShowLocationForArrivalPointEvent({required this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationEvent.showLocationForArrivalPoint(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RouteCreationEvent.showLocationForArrivalPoint'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowLocationForArrivalPointEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $ShowLocationForArrivalPointEventCopyWith<ShowLocationForArrivalPointEvent>
      get copyWith => _$ShowLocationForArrivalPointEventCopyWithImpl<
          ShowLocationForArrivalPointEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        showLocationForDeparturePoint,
    required TResult Function(BuildContext context) showLocationForArrivalPoint,
    required TResult Function() closeLocation,
    required TResult Function(String departurePoint, String arrivalPoint,
            String date, BuildContext context)
        addRoute,
    required TResult Function() showCalendarEvent,
  }) {
    return showLocationForArrivalPoint(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
  }) {
    return showLocationForArrivalPoint?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (showLocationForArrivalPoint != null) {
      return showLocationForArrivalPoint(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLocationForDeparturePointEvent value)
        showLocationForDeparturePoint,
    required TResult Function(ShowLocationForArrivalPointEvent value)
        showLocationForArrivalPoint,
    required TResult Function(CloseLocationEvent value) closeLocation,
    required TResult Function(AddRouteEvent value) addRoute,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
  }) {
    return showLocationForArrivalPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
  }) {
    return showLocationForArrivalPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (showLocationForArrivalPoint != null) {
      return showLocationForArrivalPoint(this);
    }
    return orElse();
  }
}

abstract class ShowLocationForArrivalPointEvent implements RouteCreationEvent {
  const factory ShowLocationForArrivalPointEvent(
      {required BuildContext context}) = _$ShowLocationForArrivalPointEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  $ShowLocationForArrivalPointEventCopyWith<ShowLocationForArrivalPointEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloseLocationEventCopyWith<$Res> {
  factory $CloseLocationEventCopyWith(
          CloseLocationEvent value, $Res Function(CloseLocationEvent) then) =
      _$CloseLocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseLocationEventCopyWithImpl<$Res>
    extends _$RouteCreationEventCopyWithImpl<$Res>
    implements $CloseLocationEventCopyWith<$Res> {
  _$CloseLocationEventCopyWithImpl(
      CloseLocationEvent _value, $Res Function(CloseLocationEvent) _then)
      : super(_value, (v) => _then(v as CloseLocationEvent));

  @override
  CloseLocationEvent get _value => super._value as CloseLocationEvent;
}

/// @nodoc

class _$CloseLocationEvent
    with DiagnosticableTreeMixin
    implements CloseLocationEvent {
  const _$CloseLocationEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationEvent.closeLocation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteCreationEvent.closeLocation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseLocationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        showLocationForDeparturePoint,
    required TResult Function(BuildContext context) showLocationForArrivalPoint,
    required TResult Function() closeLocation,
    required TResult Function(String departurePoint, String arrivalPoint,
            String date, BuildContext context)
        addRoute,
    required TResult Function() showCalendarEvent,
  }) {
    return closeLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
  }) {
    return closeLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (closeLocation != null) {
      return closeLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLocationForDeparturePointEvent value)
        showLocationForDeparturePoint,
    required TResult Function(ShowLocationForArrivalPointEvent value)
        showLocationForArrivalPoint,
    required TResult Function(CloseLocationEvent value) closeLocation,
    required TResult Function(AddRouteEvent value) addRoute,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
  }) {
    return closeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
  }) {
    return closeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (closeLocation != null) {
      return closeLocation(this);
    }
    return orElse();
  }
}

abstract class CloseLocationEvent implements RouteCreationEvent {
  const factory CloseLocationEvent() = _$CloseLocationEvent;
}

/// @nodoc
abstract class $AddRouteEventCopyWith<$Res> {
  factory $AddRouteEventCopyWith(
          AddRouteEvent value, $Res Function(AddRouteEvent) then) =
      _$AddRouteEventCopyWithImpl<$Res>;
  $Res call(
      {String departurePoint,
      String arrivalPoint,
      String date,
      BuildContext context});
}

/// @nodoc
class _$AddRouteEventCopyWithImpl<$Res>
    extends _$RouteCreationEventCopyWithImpl<$Res>
    implements $AddRouteEventCopyWith<$Res> {
  _$AddRouteEventCopyWithImpl(
      AddRouteEvent _value, $Res Function(AddRouteEvent) _then)
      : super(_value, (v) => _then(v as AddRouteEvent));

  @override
  AddRouteEvent get _value => super._value as AddRouteEvent;

  @override
  $Res call({
    Object? departurePoint = freezed,
    Object? arrivalPoint = freezed,
    Object? date = freezed,
    Object? context = freezed,
  }) {
    return _then(AddRouteEvent(
      departurePoint: departurePoint == freezed
          ? _value.departurePoint
          : departurePoint // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPoint: arrivalPoint == freezed
          ? _value.arrivalPoint
          : arrivalPoint // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$AddRouteEvent with DiagnosticableTreeMixin implements AddRouteEvent {
  const _$AddRouteEvent(
      {required this.departurePoint,
      required this.arrivalPoint,
      required this.date,
      required this.context});

  @override
  final String departurePoint;
  @override
  final String arrivalPoint;
  @override
  final String date;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationEvent.addRoute(departurePoint: $departurePoint, arrivalPoint: $arrivalPoint, date: $date, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteCreationEvent.addRoute'))
      ..add(DiagnosticsProperty('departurePoint', departurePoint))
      ..add(DiagnosticsProperty('arrivalPoint', arrivalPoint))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddRouteEvent &&
            const DeepCollectionEquality()
                .equals(other.departurePoint, departurePoint) &&
            const DeepCollectionEquality()
                .equals(other.arrivalPoint, arrivalPoint) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(departurePoint),
      const DeepCollectionEquality().hash(arrivalPoint),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $AddRouteEventCopyWith<AddRouteEvent> get copyWith =>
      _$AddRouteEventCopyWithImpl<AddRouteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        showLocationForDeparturePoint,
    required TResult Function(BuildContext context) showLocationForArrivalPoint,
    required TResult Function() closeLocation,
    required TResult Function(String departurePoint, String arrivalPoint,
            String date, BuildContext context)
        addRoute,
    required TResult Function() showCalendarEvent,
  }) {
    return addRoute(departurePoint, arrivalPoint, date, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
  }) {
    return addRoute?.call(departurePoint, arrivalPoint, date, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (addRoute != null) {
      return addRoute(departurePoint, arrivalPoint, date, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLocationForDeparturePointEvent value)
        showLocationForDeparturePoint,
    required TResult Function(ShowLocationForArrivalPointEvent value)
        showLocationForArrivalPoint,
    required TResult Function(CloseLocationEvent value) closeLocation,
    required TResult Function(AddRouteEvent value) addRoute,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
  }) {
    return addRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
  }) {
    return addRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (addRoute != null) {
      return addRoute(this);
    }
    return orElse();
  }
}

abstract class AddRouteEvent implements RouteCreationEvent {
  const factory AddRouteEvent(
      {required String departurePoint,
      required String arrivalPoint,
      required String date,
      required BuildContext context}) = _$AddRouteEvent;

  String get departurePoint;
  String get arrivalPoint;
  String get date;
  BuildContext get context;
  @JsonKey(ignore: true)
  $AddRouteEventCopyWith<AddRouteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCalendarEventCopyWith<$Res> {
  factory $ShowCalendarEventCopyWith(
          ShowCalendarEvent value, $Res Function(ShowCalendarEvent) then) =
      _$ShowCalendarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowCalendarEventCopyWithImpl<$Res>
    extends _$RouteCreationEventCopyWithImpl<$Res>
    implements $ShowCalendarEventCopyWith<$Res> {
  _$ShowCalendarEventCopyWithImpl(
      ShowCalendarEvent _value, $Res Function(ShowCalendarEvent) _then)
      : super(_value, (v) => _then(v as ShowCalendarEvent));

  @override
  ShowCalendarEvent get _value => super._value as ShowCalendarEvent;
}

/// @nodoc

class _$ShowCalendarEvent
    with DiagnosticableTreeMixin
    implements ShowCalendarEvent {
  const _$ShowCalendarEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationEvent.showCalendarEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RouteCreationEvent.showCalendarEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowCalendarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context)
        showLocationForDeparturePoint,
    required TResult Function(BuildContext context) showLocationForArrivalPoint,
    required TResult Function() closeLocation,
    required TResult Function(String departurePoint, String arrivalPoint,
            String date, BuildContext context)
        addRoute,
    required TResult Function() showCalendarEvent,
  }) {
    return showCalendarEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
  }) {
    return showCalendarEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showLocationForDeparturePoint,
    TResult Function(BuildContext context)? showLocationForArrivalPoint,
    TResult Function()? closeLocation,
    TResult Function(String departurePoint, String arrivalPoint, String date,
            BuildContext context)?
        addRoute,
    TResult Function()? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (showCalendarEvent != null) {
      return showCalendarEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLocationForDeparturePointEvent value)
        showLocationForDeparturePoint,
    required TResult Function(ShowLocationForArrivalPointEvent value)
        showLocationForArrivalPoint,
    required TResult Function(CloseLocationEvent value) closeLocation,
    required TResult Function(AddRouteEvent value) addRoute,
    required TResult Function(ShowCalendarEvent value) showCalendarEvent,
  }) {
    return showCalendarEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
  }) {
    return showCalendarEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLocationForDeparturePointEvent value)?
        showLocationForDeparturePoint,
    TResult Function(ShowLocationForArrivalPointEvent value)?
        showLocationForArrivalPoint,
    TResult Function(CloseLocationEvent value)? closeLocation,
    TResult Function(AddRouteEvent value)? addRoute,
    TResult Function(ShowCalendarEvent value)? showCalendarEvent,
    required TResult orElse(),
  }) {
    if (showCalendarEvent != null) {
      return showCalendarEvent(this);
    }
    return orElse();
  }
}

abstract class ShowCalendarEvent implements RouteCreationEvent {
  const factory ShowCalendarEvent() = _$ShowCalendarEvent;
}

/// @nodoc
class _$RouteCreationStateTearOff {
  const _$RouteCreationStateTearOff();

  _PageInitState pageInit() {
    return const _PageInitState();
  }

  _ShowLocationForArrivalPointState showLocationForArrivalPoint(
      {required List<List<String>> locationMap}) {
    return _ShowLocationForArrivalPointState(
      locationMap: locationMap,
    );
  }

  _ShowLocationForDeparturePointState showLocationForDeparturePoint(
      {required List<List<String>> locationMap}) {
    return _ShowLocationForDeparturePointState(
      locationMap: locationMap,
    );
  }

  _CloseLocationState closeLocation() {
    return const _CloseLocationState();
  }

  _ShowCalendarState showCalendar() {
    return const _ShowCalendarState();
  }
}

/// @nodoc
const $RouteCreationState = _$RouteCreationStateTearOff();

/// @nodoc
mixin _$RouteCreationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(List<List<String>> locationMap)
        showLocationForArrivalPoint,
    required TResult Function(List<List<String>> locationMap)
        showLocationForDeparturePoint,
    required TResult Function() closeLocation,
    required TResult Function() showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageInitState value) pageInit,
    required TResult Function(_ShowLocationForArrivalPointState value)
        showLocationForArrivalPoint,
    required TResult Function(_ShowLocationForDeparturePointState value)
        showLocationForDeparturePoint,
    required TResult Function(_CloseLocationState value) closeLocation,
    required TResult Function(_ShowCalendarState value) showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCreationStateCopyWith<$Res> {
  factory $RouteCreationStateCopyWith(
          RouteCreationState value, $Res Function(RouteCreationState) then) =
      _$RouteCreationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteCreationStateCopyWithImpl<$Res>
    implements $RouteCreationStateCopyWith<$Res> {
  _$RouteCreationStateCopyWithImpl(this._value, this._then);

  final RouteCreationState _value;
  // ignore: unused_field
  final $Res Function(RouteCreationState) _then;
}

/// @nodoc
abstract class _$PageInitStateCopyWith<$Res> {
  factory _$PageInitStateCopyWith(
          _PageInitState value, $Res Function(_PageInitState) then) =
      __$PageInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$PageInitStateCopyWithImpl<$Res>
    extends _$RouteCreationStateCopyWithImpl<$Res>
    implements _$PageInitStateCopyWith<$Res> {
  __$PageInitStateCopyWithImpl(
      _PageInitState _value, $Res Function(_PageInitState) _then)
      : super(_value, (v) => _then(v as _PageInitState));

  @override
  _PageInitState get _value => super._value as _PageInitState;
}

/// @nodoc

class _$_PageInitState with DiagnosticableTreeMixin implements _PageInitState {
  const _$_PageInitState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationState.pageInit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RouteCreationState.pageInit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PageInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(List<List<String>> locationMap)
        showLocationForArrivalPoint,
    required TResult Function(List<List<String>> locationMap)
        showLocationForDeparturePoint,
    required TResult Function() closeLocation,
    required TResult Function() showCalendar,
  }) {
    return pageInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
  }) {
    return pageInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) {
    if (pageInit != null) {
      return pageInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageInitState value) pageInit,
    required TResult Function(_ShowLocationForArrivalPointState value)
        showLocationForArrivalPoint,
    required TResult Function(_ShowLocationForDeparturePointState value)
        showLocationForDeparturePoint,
    required TResult Function(_CloseLocationState value) closeLocation,
    required TResult Function(_ShowCalendarState value) showCalendar,
  }) {
    return pageInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
  }) {
    return pageInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
    required TResult orElse(),
  }) {
    if (pageInit != null) {
      return pageInit(this);
    }
    return orElse();
  }
}

abstract class _PageInitState implements RouteCreationState {
  const factory _PageInitState() = _$_PageInitState;
}

/// @nodoc
abstract class _$ShowLocationForArrivalPointStateCopyWith<$Res> {
  factory _$ShowLocationForArrivalPointStateCopyWith(
          _ShowLocationForArrivalPointState value,
          $Res Function(_ShowLocationForArrivalPointState) then) =
      __$ShowLocationForArrivalPointStateCopyWithImpl<$Res>;
  $Res call({List<List<String>> locationMap});
}

/// @nodoc
class __$ShowLocationForArrivalPointStateCopyWithImpl<$Res>
    extends _$RouteCreationStateCopyWithImpl<$Res>
    implements _$ShowLocationForArrivalPointStateCopyWith<$Res> {
  __$ShowLocationForArrivalPointStateCopyWithImpl(
      _ShowLocationForArrivalPointState _value,
      $Res Function(_ShowLocationForArrivalPointState) _then)
      : super(_value, (v) => _then(v as _ShowLocationForArrivalPointState));

  @override
  _ShowLocationForArrivalPointState get _value =>
      super._value as _ShowLocationForArrivalPointState;

  @override
  $Res call({
    Object? locationMap = freezed,
  }) {
    return _then(_ShowLocationForArrivalPointState(
      locationMap: locationMap == freezed
          ? _value.locationMap
          : locationMap // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$_ShowLocationForArrivalPointState
    with DiagnosticableTreeMixin
    implements _ShowLocationForArrivalPointState {
  const _$_ShowLocationForArrivalPointState({required this.locationMap});

  @override
  final List<List<String>> locationMap;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationState.showLocationForArrivalPoint(locationMap: $locationMap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RouteCreationState.showLocationForArrivalPoint'))
      ..add(DiagnosticsProperty('locationMap', locationMap));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowLocationForArrivalPointState &&
            const DeepCollectionEquality()
                .equals(other.locationMap, locationMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationMap));

  @JsonKey(ignore: true)
  @override
  _$ShowLocationForArrivalPointStateCopyWith<_ShowLocationForArrivalPointState>
      get copyWith => __$ShowLocationForArrivalPointStateCopyWithImpl<
          _ShowLocationForArrivalPointState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(List<List<String>> locationMap)
        showLocationForArrivalPoint,
    required TResult Function(List<List<String>> locationMap)
        showLocationForDeparturePoint,
    required TResult Function() closeLocation,
    required TResult Function() showCalendar,
  }) {
    return showLocationForArrivalPoint(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
  }) {
    return showLocationForArrivalPoint?.call(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) {
    if (showLocationForArrivalPoint != null) {
      return showLocationForArrivalPoint(locationMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageInitState value) pageInit,
    required TResult Function(_ShowLocationForArrivalPointState value)
        showLocationForArrivalPoint,
    required TResult Function(_ShowLocationForDeparturePointState value)
        showLocationForDeparturePoint,
    required TResult Function(_CloseLocationState value) closeLocation,
    required TResult Function(_ShowCalendarState value) showCalendar,
  }) {
    return showLocationForArrivalPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
  }) {
    return showLocationForArrivalPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
    required TResult orElse(),
  }) {
    if (showLocationForArrivalPoint != null) {
      return showLocationForArrivalPoint(this);
    }
    return orElse();
  }
}

abstract class _ShowLocationForArrivalPointState implements RouteCreationState {
  const factory _ShowLocationForArrivalPointState(
          {required List<List<String>> locationMap}) =
      _$_ShowLocationForArrivalPointState;

  List<List<String>> get locationMap;
  @JsonKey(ignore: true)
  _$ShowLocationForArrivalPointStateCopyWith<_ShowLocationForArrivalPointState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowLocationForDeparturePointStateCopyWith<$Res> {
  factory _$ShowLocationForDeparturePointStateCopyWith(
          _ShowLocationForDeparturePointState value,
          $Res Function(_ShowLocationForDeparturePointState) then) =
      __$ShowLocationForDeparturePointStateCopyWithImpl<$Res>;
  $Res call({List<List<String>> locationMap});
}

/// @nodoc
class __$ShowLocationForDeparturePointStateCopyWithImpl<$Res>
    extends _$RouteCreationStateCopyWithImpl<$Res>
    implements _$ShowLocationForDeparturePointStateCopyWith<$Res> {
  __$ShowLocationForDeparturePointStateCopyWithImpl(
      _ShowLocationForDeparturePointState _value,
      $Res Function(_ShowLocationForDeparturePointState) _then)
      : super(_value, (v) => _then(v as _ShowLocationForDeparturePointState));

  @override
  _ShowLocationForDeparturePointState get _value =>
      super._value as _ShowLocationForDeparturePointState;

  @override
  $Res call({
    Object? locationMap = freezed,
  }) {
    return _then(_ShowLocationForDeparturePointState(
      locationMap: locationMap == freezed
          ? _value.locationMap
          : locationMap // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$_ShowLocationForDeparturePointState
    with DiagnosticableTreeMixin
    implements _ShowLocationForDeparturePointState {
  const _$_ShowLocationForDeparturePointState({required this.locationMap});

  @override
  final List<List<String>> locationMap;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationState.showLocationForDeparturePoint(locationMap: $locationMap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RouteCreationState.showLocationForDeparturePoint'))
      ..add(DiagnosticsProperty('locationMap', locationMap));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowLocationForDeparturePointState &&
            const DeepCollectionEquality()
                .equals(other.locationMap, locationMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationMap));

  @JsonKey(ignore: true)
  @override
  _$ShowLocationForDeparturePointStateCopyWith<
          _ShowLocationForDeparturePointState>
      get copyWith => __$ShowLocationForDeparturePointStateCopyWithImpl<
          _ShowLocationForDeparturePointState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(List<List<String>> locationMap)
        showLocationForArrivalPoint,
    required TResult Function(List<List<String>> locationMap)
        showLocationForDeparturePoint,
    required TResult Function() closeLocation,
    required TResult Function() showCalendar,
  }) {
    return showLocationForDeparturePoint(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
  }) {
    return showLocationForDeparturePoint?.call(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) {
    if (showLocationForDeparturePoint != null) {
      return showLocationForDeparturePoint(locationMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageInitState value) pageInit,
    required TResult Function(_ShowLocationForArrivalPointState value)
        showLocationForArrivalPoint,
    required TResult Function(_ShowLocationForDeparturePointState value)
        showLocationForDeparturePoint,
    required TResult Function(_CloseLocationState value) closeLocation,
    required TResult Function(_ShowCalendarState value) showCalendar,
  }) {
    return showLocationForDeparturePoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
  }) {
    return showLocationForDeparturePoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
    required TResult orElse(),
  }) {
    if (showLocationForDeparturePoint != null) {
      return showLocationForDeparturePoint(this);
    }
    return orElse();
  }
}

abstract class _ShowLocationForDeparturePointState
    implements RouteCreationState {
  const factory _ShowLocationForDeparturePointState(
          {required List<List<String>> locationMap}) =
      _$_ShowLocationForDeparturePointState;

  List<List<String>> get locationMap;
  @JsonKey(ignore: true)
  _$ShowLocationForDeparturePointStateCopyWith<
          _ShowLocationForDeparturePointState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CloseLocationStateCopyWith<$Res> {
  factory _$CloseLocationStateCopyWith(
          _CloseLocationState value, $Res Function(_CloseLocationState) then) =
      __$CloseLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseLocationStateCopyWithImpl<$Res>
    extends _$RouteCreationStateCopyWithImpl<$Res>
    implements _$CloseLocationStateCopyWith<$Res> {
  __$CloseLocationStateCopyWithImpl(
      _CloseLocationState _value, $Res Function(_CloseLocationState) _then)
      : super(_value, (v) => _then(v as _CloseLocationState));

  @override
  _CloseLocationState get _value => super._value as _CloseLocationState;
}

/// @nodoc

class _$_CloseLocationState
    with DiagnosticableTreeMixin
    implements _CloseLocationState {
  const _$_CloseLocationState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationState.closeLocation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteCreationState.closeLocation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CloseLocationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(List<List<String>> locationMap)
        showLocationForArrivalPoint,
    required TResult Function(List<List<String>> locationMap)
        showLocationForDeparturePoint,
    required TResult Function() closeLocation,
    required TResult Function() showCalendar,
  }) {
    return closeLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
  }) {
    return closeLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
    required TResult orElse(),
  }) {
    if (closeLocation != null) {
      return closeLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageInitState value) pageInit,
    required TResult Function(_ShowLocationForArrivalPointState value)
        showLocationForArrivalPoint,
    required TResult Function(_ShowLocationForDeparturePointState value)
        showLocationForDeparturePoint,
    required TResult Function(_CloseLocationState value) closeLocation,
    required TResult Function(_ShowCalendarState value) showCalendar,
  }) {
    return closeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
  }) {
    return closeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
    required TResult orElse(),
  }) {
    if (closeLocation != null) {
      return closeLocation(this);
    }
    return orElse();
  }
}

abstract class _CloseLocationState implements RouteCreationState {
  const factory _CloseLocationState() = _$_CloseLocationState;
}

/// @nodoc
abstract class _$ShowCalendarStateCopyWith<$Res> {
  factory _$ShowCalendarStateCopyWith(
          _ShowCalendarState value, $Res Function(_ShowCalendarState) then) =
      __$ShowCalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowCalendarStateCopyWithImpl<$Res>
    extends _$RouteCreationStateCopyWithImpl<$Res>
    implements _$ShowCalendarStateCopyWith<$Res> {
  __$ShowCalendarStateCopyWithImpl(
      _ShowCalendarState _value, $Res Function(_ShowCalendarState) _then)
      : super(_value, (v) => _then(v as _ShowCalendarState));

  @override
  _ShowCalendarState get _value => super._value as _ShowCalendarState;
}

/// @nodoc

class _$_ShowCalendarState
    with DiagnosticableTreeMixin
    implements _ShowCalendarState {
  const _$_ShowCalendarState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteCreationState.showCalendar()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteCreationState.showCalendar'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowCalendarState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(List<List<String>> locationMap)
        showLocationForArrivalPoint,
    required TResult Function(List<List<String>> locationMap)
        showLocationForDeparturePoint,
    required TResult Function() closeLocation,
    required TResult Function() showCalendar,
  }) {
    return showCalendar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
    TResult Function()? showCalendar,
  }) {
    return showCalendar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(List<List<String>> locationMap)?
        showLocationForArrivalPoint,
    TResult Function(List<List<String>> locationMap)?
        showLocationForDeparturePoint,
    TResult Function()? closeLocation,
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
    required TResult Function(_PageInitState value) pageInit,
    required TResult Function(_ShowLocationForArrivalPointState value)
        showLocationForArrivalPoint,
    required TResult Function(_ShowLocationForDeparturePointState value)
        showLocationForDeparturePoint,
    required TResult Function(_CloseLocationState value) closeLocation,
    required TResult Function(_ShowCalendarState value) showCalendar,
  }) {
    return showCalendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
  }) {
    return showCalendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageInitState value)? pageInit,
    TResult Function(_ShowLocationForArrivalPointState value)?
        showLocationForArrivalPoint,
    TResult Function(_ShowLocationForDeparturePointState value)?
        showLocationForDeparturePoint,
    TResult Function(_CloseLocationState value)? closeLocation,
    TResult Function(_ShowCalendarState value)? showCalendar,
    required TResult orElse(),
  }) {
    if (showCalendar != null) {
      return showCalendar(this);
    }
    return orElse();
  }
}

abstract class _ShowCalendarState implements RouteCreationState {
  const factory _ShowCalendarState() = _$_ShowCalendarState;
}
