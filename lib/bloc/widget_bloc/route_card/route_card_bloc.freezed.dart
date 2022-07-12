// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RouteCardEventTearOff {
  const _$RouteCardEventTearOff();

  RemoveRouteEvent removeRoute(
      {required String routeId, required String nameCollection}) {
    return RemoveRouteEvent(
      routeId: routeId,
      nameCollection: nameCollection,
    );
  }

  LoadedRoutesEvent loadedRoutes({required String nameCollection}) {
    return LoadedRoutesEvent(
      nameCollection: nameCollection,
    );
  }
}

/// @nodoc
const $RouteCardEvent = _$RouteCardEventTearOff();

/// @nodoc
mixin _$RouteCardEvent {
  String get nameCollection => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String routeId, String nameCollection)
        removeRoute,
    required TResult Function(String nameCollection) loadedRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String routeId, String nameCollection)? removeRoute,
    TResult Function(String nameCollection)? loadedRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String routeId, String nameCollection)? removeRoute,
    TResult Function(String nameCollection)? loadedRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoveRouteEvent value) removeRoute,
    required TResult Function(LoadedRoutesEvent value) loadedRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoveRouteEvent value)? removeRoute,
    TResult Function(LoadedRoutesEvent value)? loadedRoutes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoveRouteEvent value)? removeRoute,
    TResult Function(LoadedRoutesEvent value)? loadedRoutes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteCardEventCopyWith<RouteCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCardEventCopyWith<$Res> {
  factory $RouteCardEventCopyWith(
          RouteCardEvent value, $Res Function(RouteCardEvent) then) =
      _$RouteCardEventCopyWithImpl<$Res>;
  $Res call({String nameCollection});
}

/// @nodoc
class _$RouteCardEventCopyWithImpl<$Res>
    implements $RouteCardEventCopyWith<$Res> {
  _$RouteCardEventCopyWithImpl(this._value, this._then);

  final RouteCardEvent _value;
  // ignore: unused_field
  final $Res Function(RouteCardEvent) _then;

  @override
  $Res call({
    Object? nameCollection = freezed,
  }) {
    return _then(_value.copyWith(
      nameCollection: nameCollection == freezed
          ? _value.nameCollection
          : nameCollection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $RemoveRouteEventCopyWith<$Res>
    implements $RouteCardEventCopyWith<$Res> {
  factory $RemoveRouteEventCopyWith(
          RemoveRouteEvent value, $Res Function(RemoveRouteEvent) then) =
      _$RemoveRouteEventCopyWithImpl<$Res>;
  @override
  $Res call({String routeId, String nameCollection});
}

/// @nodoc
class _$RemoveRouteEventCopyWithImpl<$Res>
    extends _$RouteCardEventCopyWithImpl<$Res>
    implements $RemoveRouteEventCopyWith<$Res> {
  _$RemoveRouteEventCopyWithImpl(
      RemoveRouteEvent _value, $Res Function(RemoveRouteEvent) _then)
      : super(_value, (v) => _then(v as RemoveRouteEvent));

  @override
  RemoveRouteEvent get _value => super._value as RemoveRouteEvent;

  @override
  $Res call({
    Object? routeId = freezed,
    Object? nameCollection = freezed,
  }) {
    return _then(RemoveRouteEvent(
      routeId: routeId == freezed
          ? _value.routeId
          : routeId // ignore: cast_nullable_to_non_nullable
              as String,
      nameCollection: nameCollection == freezed
          ? _value.nameCollection
          : nameCollection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveRouteEvent implements RemoveRouteEvent {
  const _$RemoveRouteEvent(
      {required this.routeId, required this.nameCollection});

  @override
  final String routeId;
  @override
  final String nameCollection;

  @override
  String toString() {
    return 'RouteCardEvent.removeRoute(routeId: $routeId, nameCollection: $nameCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveRouteEvent &&
            const DeepCollectionEquality().equals(other.routeId, routeId) &&
            const DeepCollectionEquality()
                .equals(other.nameCollection, nameCollection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeId),
      const DeepCollectionEquality().hash(nameCollection));

  @JsonKey(ignore: true)
  @override
  $RemoveRouteEventCopyWith<RemoveRouteEvent> get copyWith =>
      _$RemoveRouteEventCopyWithImpl<RemoveRouteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String routeId, String nameCollection)
        removeRoute,
    required TResult Function(String nameCollection) loadedRoutes,
  }) {
    return removeRoute(routeId, nameCollection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String routeId, String nameCollection)? removeRoute,
    TResult Function(String nameCollection)? loadedRoutes,
  }) {
    return removeRoute?.call(routeId, nameCollection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String routeId, String nameCollection)? removeRoute,
    TResult Function(String nameCollection)? loadedRoutes,
    required TResult orElse(),
  }) {
    if (removeRoute != null) {
      return removeRoute(routeId, nameCollection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoveRouteEvent value) removeRoute,
    required TResult Function(LoadedRoutesEvent value) loadedRoutes,
  }) {
    return removeRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoveRouteEvent value)? removeRoute,
    TResult Function(LoadedRoutesEvent value)? loadedRoutes,
  }) {
    return removeRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoveRouteEvent value)? removeRoute,
    TResult Function(LoadedRoutesEvent value)? loadedRoutes,
    required TResult orElse(),
  }) {
    if (removeRoute != null) {
      return removeRoute(this);
    }
    return orElse();
  }
}

abstract class RemoveRouteEvent implements RouteCardEvent {
  const factory RemoveRouteEvent(
      {required String routeId,
      required String nameCollection}) = _$RemoveRouteEvent;

  String get routeId;
  @override
  String get nameCollection;
  @override
  @JsonKey(ignore: true)
  $RemoveRouteEventCopyWith<RemoveRouteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedRoutesEventCopyWith<$Res>
    implements $RouteCardEventCopyWith<$Res> {
  factory $LoadedRoutesEventCopyWith(
          LoadedRoutesEvent value, $Res Function(LoadedRoutesEvent) then) =
      _$LoadedRoutesEventCopyWithImpl<$Res>;
  @override
  $Res call({String nameCollection});
}

/// @nodoc
class _$LoadedRoutesEventCopyWithImpl<$Res>
    extends _$RouteCardEventCopyWithImpl<$Res>
    implements $LoadedRoutesEventCopyWith<$Res> {
  _$LoadedRoutesEventCopyWithImpl(
      LoadedRoutesEvent _value, $Res Function(LoadedRoutesEvent) _then)
      : super(_value, (v) => _then(v as LoadedRoutesEvent));

  @override
  LoadedRoutesEvent get _value => super._value as LoadedRoutesEvent;

  @override
  $Res call({
    Object? nameCollection = freezed,
  }) {
    return _then(LoadedRoutesEvent(
      nameCollection: nameCollection == freezed
          ? _value.nameCollection
          : nameCollection // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedRoutesEvent implements LoadedRoutesEvent {
  const _$LoadedRoutesEvent({required this.nameCollection});

  @override
  final String nameCollection;

  @override
  String toString() {
    return 'RouteCardEvent.loadedRoutes(nameCollection: $nameCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedRoutesEvent &&
            const DeepCollectionEquality()
                .equals(other.nameCollection, nameCollection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(nameCollection));

  @JsonKey(ignore: true)
  @override
  $LoadedRoutesEventCopyWith<LoadedRoutesEvent> get copyWith =>
      _$LoadedRoutesEventCopyWithImpl<LoadedRoutesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String routeId, String nameCollection)
        removeRoute,
    required TResult Function(String nameCollection) loadedRoutes,
  }) {
    return loadedRoutes(nameCollection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String routeId, String nameCollection)? removeRoute,
    TResult Function(String nameCollection)? loadedRoutes,
  }) {
    return loadedRoutes?.call(nameCollection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String routeId, String nameCollection)? removeRoute,
    TResult Function(String nameCollection)? loadedRoutes,
    required TResult orElse(),
  }) {
    if (loadedRoutes != null) {
      return loadedRoutes(nameCollection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoveRouteEvent value) removeRoute,
    required TResult Function(LoadedRoutesEvent value) loadedRoutes,
  }) {
    return loadedRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RemoveRouteEvent value)? removeRoute,
    TResult Function(LoadedRoutesEvent value)? loadedRoutes,
  }) {
    return loadedRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoveRouteEvent value)? removeRoute,
    TResult Function(LoadedRoutesEvent value)? loadedRoutes,
    required TResult orElse(),
  }) {
    if (loadedRoutes != null) {
      return loadedRoutes(this);
    }
    return orElse();
  }
}

abstract class LoadedRoutesEvent implements RouteCardEvent {
  const factory LoadedRoutesEvent({required String nameCollection}) =
      _$LoadedRoutesEvent;

  @override
  String get nameCollection;
  @override
  @JsonKey(ignore: true)
  $LoadedRoutesEventCopyWith<LoadedRoutesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RouteCardStateTearOff {
  const _$RouteCardStateTearOff();

  RouteCardInitState routeCardInit() {
    return const RouteCardInitState();
  }

  LoadedUserRoutesState loadedRoutes(
      {required List<Map<String, String>> routesAndDates}) {
    return LoadedUserRoutesState(
      routesAndDates: routesAndDates,
    );
  }

  RemoveRouteState removeRoute(
      {required List<Map<String, String>> routesAndDates}) {
    return RemoveRouteState(
      routesAndDates: routesAndDates,
    );
  }
}

/// @nodoc
const $RouteCardState = _$RouteCardStateTearOff();

/// @nodoc
mixin _$RouteCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() routeCardInit,
    required TResult Function(List<Map<String, String>> routesAndDates)
        loadedRoutes,
    required TResult Function(List<Map<String, String>> routesAndDates)
        removeRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteCardInitState value) routeCardInit,
    required TResult Function(LoadedUserRoutesState value) loadedRoutes,
    required TResult Function(RemoveRouteState value) removeRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCardStateCopyWith<$Res> {
  factory $RouteCardStateCopyWith(
          RouteCardState value, $Res Function(RouteCardState) then) =
      _$RouteCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteCardStateCopyWithImpl<$Res>
    implements $RouteCardStateCopyWith<$Res> {
  _$RouteCardStateCopyWithImpl(this._value, this._then);

  final RouteCardState _value;
  // ignore: unused_field
  final $Res Function(RouteCardState) _then;
}

/// @nodoc
abstract class $RouteCardInitStateCopyWith<$Res> {
  factory $RouteCardInitStateCopyWith(
          RouteCardInitState value, $Res Function(RouteCardInitState) then) =
      _$RouteCardInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteCardInitStateCopyWithImpl<$Res>
    extends _$RouteCardStateCopyWithImpl<$Res>
    implements $RouteCardInitStateCopyWith<$Res> {
  _$RouteCardInitStateCopyWithImpl(
      RouteCardInitState _value, $Res Function(RouteCardInitState) _then)
      : super(_value, (v) => _then(v as RouteCardInitState));

  @override
  RouteCardInitState get _value => super._value as RouteCardInitState;
}

/// @nodoc

class _$RouteCardInitState implements RouteCardInitState {
  const _$RouteCardInitState();

  @override
  String toString() {
    return 'RouteCardState.routeCardInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RouteCardInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() routeCardInit,
    required TResult Function(List<Map<String, String>> routesAndDates)
        loadedRoutes,
    required TResult Function(List<Map<String, String>> routesAndDates)
        removeRoute,
  }) {
    return routeCardInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
  }) {
    return routeCardInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
    required TResult orElse(),
  }) {
    if (routeCardInit != null) {
      return routeCardInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteCardInitState value) routeCardInit,
    required TResult Function(LoadedUserRoutesState value) loadedRoutes,
    required TResult Function(RemoveRouteState value) removeRoute,
  }) {
    return routeCardInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
  }) {
    return routeCardInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
    required TResult orElse(),
  }) {
    if (routeCardInit != null) {
      return routeCardInit(this);
    }
    return orElse();
  }
}

abstract class RouteCardInitState implements RouteCardState {
  const factory RouteCardInitState() = _$RouteCardInitState;
}

/// @nodoc
abstract class $LoadedUserRoutesStateCopyWith<$Res> {
  factory $LoadedUserRoutesStateCopyWith(LoadedUserRoutesState value,
          $Res Function(LoadedUserRoutesState) then) =
      _$LoadedUserRoutesStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, String>> routesAndDates});
}

/// @nodoc
class _$LoadedUserRoutesStateCopyWithImpl<$Res>
    extends _$RouteCardStateCopyWithImpl<$Res>
    implements $LoadedUserRoutesStateCopyWith<$Res> {
  _$LoadedUserRoutesStateCopyWithImpl(
      LoadedUserRoutesState _value, $Res Function(LoadedUserRoutesState) _then)
      : super(_value, (v) => _then(v as LoadedUserRoutesState));

  @override
  LoadedUserRoutesState get _value => super._value as LoadedUserRoutesState;

  @override
  $Res call({
    Object? routesAndDates = freezed,
  }) {
    return _then(LoadedUserRoutesState(
      routesAndDates: routesAndDates == freezed
          ? _value.routesAndDates
          : routesAndDates // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$LoadedUserRoutesState implements LoadedUserRoutesState {
  const _$LoadedUserRoutesState({required this.routesAndDates});

  @override
  final List<Map<String, String>> routesAndDates;

  @override
  String toString() {
    return 'RouteCardState.loadedRoutes(routesAndDates: $routesAndDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedUserRoutesState &&
            const DeepCollectionEquality()
                .equals(other.routesAndDates, routesAndDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(routesAndDates));

  @JsonKey(ignore: true)
  @override
  $LoadedUserRoutesStateCopyWith<LoadedUserRoutesState> get copyWith =>
      _$LoadedUserRoutesStateCopyWithImpl<LoadedUserRoutesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() routeCardInit,
    required TResult Function(List<Map<String, String>> routesAndDates)
        loadedRoutes,
    required TResult Function(List<Map<String, String>> routesAndDates)
        removeRoute,
  }) {
    return loadedRoutes(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
  }) {
    return loadedRoutes?.call(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
    required TResult orElse(),
  }) {
    if (loadedRoutes != null) {
      return loadedRoutes(routesAndDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteCardInitState value) routeCardInit,
    required TResult Function(LoadedUserRoutesState value) loadedRoutes,
    required TResult Function(RemoveRouteState value) removeRoute,
  }) {
    return loadedRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
  }) {
    return loadedRoutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
    required TResult orElse(),
  }) {
    if (loadedRoutes != null) {
      return loadedRoutes(this);
    }
    return orElse();
  }
}

abstract class LoadedUserRoutesState implements RouteCardState {
  const factory LoadedUserRoutesState(
          {required List<Map<String, String>> routesAndDates}) =
      _$LoadedUserRoutesState;

  List<Map<String, String>> get routesAndDates;
  @JsonKey(ignore: true)
  $LoadedUserRoutesStateCopyWith<LoadedUserRoutesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveRouteStateCopyWith<$Res> {
  factory $RemoveRouteStateCopyWith(
          RemoveRouteState value, $Res Function(RemoveRouteState) then) =
      _$RemoveRouteStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, String>> routesAndDates});
}

/// @nodoc
class _$RemoveRouteStateCopyWithImpl<$Res>
    extends _$RouteCardStateCopyWithImpl<$Res>
    implements $RemoveRouteStateCopyWith<$Res> {
  _$RemoveRouteStateCopyWithImpl(
      RemoveRouteState _value, $Res Function(RemoveRouteState) _then)
      : super(_value, (v) => _then(v as RemoveRouteState));

  @override
  RemoveRouteState get _value => super._value as RemoveRouteState;

  @override
  $Res call({
    Object? routesAndDates = freezed,
  }) {
    return _then(RemoveRouteState(
      routesAndDates: routesAndDates == freezed
          ? _value.routesAndDates
          : routesAndDates // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$RemoveRouteState implements RemoveRouteState {
  const _$RemoveRouteState({required this.routesAndDates});

  @override
  final List<Map<String, String>> routesAndDates;

  @override
  String toString() {
    return 'RouteCardState.removeRoute(routesAndDates: $routesAndDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveRouteState &&
            const DeepCollectionEquality()
                .equals(other.routesAndDates, routesAndDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(routesAndDates));

  @JsonKey(ignore: true)
  @override
  $RemoveRouteStateCopyWith<RemoveRouteState> get copyWith =>
      _$RemoveRouteStateCopyWithImpl<RemoveRouteState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() routeCardInit,
    required TResult Function(List<Map<String, String>> routesAndDates)
        loadedRoutes,
    required TResult Function(List<Map<String, String>> routesAndDates)
        removeRoute,
  }) {
    return removeRoute(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
  }) {
    return removeRoute?.call(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? routeCardInit,
    TResult Function(List<Map<String, String>> routesAndDates)? loadedRoutes,
    TResult Function(List<Map<String, String>> routesAndDates)? removeRoute,
    required TResult orElse(),
  }) {
    if (removeRoute != null) {
      return removeRoute(routesAndDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteCardInitState value) routeCardInit,
    required TResult Function(LoadedUserRoutesState value) loadedRoutes,
    required TResult Function(RemoveRouteState value) removeRoute,
  }) {
    return removeRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
  }) {
    return removeRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteCardInitState value)? routeCardInit,
    TResult Function(LoadedUserRoutesState value)? loadedRoutes,
    TResult Function(RemoveRouteState value)? removeRoute,
    required TResult orElse(),
  }) {
    if (removeRoute != null) {
      return removeRoute(this);
    }
    return orElse();
  }
}

abstract class RemoveRouteState implements RouteCardState {
  const factory RemoveRouteState(
      {required List<Map<String, String>> routesAndDates}) = _$RemoveRouteState;

  List<Map<String, String>> get routesAndDates;
  @JsonKey(ignore: true)
  $RemoveRouteStateCopyWith<RemoveRouteState> get copyWith =>
      throw _privateConstructorUsedError;
}
