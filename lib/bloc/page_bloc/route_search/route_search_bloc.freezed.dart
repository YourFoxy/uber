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

  ShowFoundeRouteEvent showRoute(
      {required String fromRoute, required String toRoute}) {
    return ShowFoundeRouteEvent(
      fromRoute: fromRoute,
      toRoute: toRoute,
    );
  }

  OpenSearchDialogEvent openSearchDialog() {
    return const OpenSearchDialogEvent();
  }
}

/// @nodoc
const $RouteSearchEvent = _$RouteSearchEventTearOff();

/// @nodoc
mixin _$RouteSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) showRoute,
    required TResult Function() openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? showRoute,
    TResult Function()? openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? showRoute,
    TResult Function()? openSearchDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowFoundeRouteEvent value) showRoute,
    required TResult Function(OpenSearchDialogEvent value) openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowFoundeRouteEvent value)? showRoute,
    TResult Function(OpenSearchDialogEvent value)? openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowFoundeRouteEvent value)? showRoute,
    TResult Function(OpenSearchDialogEvent value)? openSearchDialog,
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
abstract class $ShowFoundeRouteEventCopyWith<$Res> {
  factory $ShowFoundeRouteEventCopyWith(ShowFoundeRouteEvent value,
          $Res Function(ShowFoundeRouteEvent) then) =
      _$ShowFoundeRouteEventCopyWithImpl<$Res>;
  $Res call({String fromRoute, String toRoute});
}

/// @nodoc
class _$ShowFoundeRouteEventCopyWithImpl<$Res>
    extends _$RouteSearchEventCopyWithImpl<$Res>
    implements $ShowFoundeRouteEventCopyWith<$Res> {
  _$ShowFoundeRouteEventCopyWithImpl(
      ShowFoundeRouteEvent _value, $Res Function(ShowFoundeRouteEvent) _then)
      : super(_value, (v) => _then(v as ShowFoundeRouteEvent));

  @override
  ShowFoundeRouteEvent get _value => super._value as ShowFoundeRouteEvent;

  @override
  $Res call({
    Object? fromRoute = freezed,
    Object? toRoute = freezed,
  }) {
    return _then(ShowFoundeRouteEvent(
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

class _$ShowFoundeRouteEvent
    with DiagnosticableTreeMixin
    implements ShowFoundeRouteEvent {
  const _$ShowFoundeRouteEvent(
      {required this.fromRoute, required this.toRoute});

  @override
  final String fromRoute;
  @override
  final String toRoute;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchEvent.showRoute(fromRoute: $fromRoute, toRoute: $toRoute)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchEvent.showRoute'))
      ..add(DiagnosticsProperty('fromRoute', fromRoute))
      ..add(DiagnosticsProperty('toRoute', toRoute));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowFoundeRouteEvent &&
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
  $ShowFoundeRouteEventCopyWith<ShowFoundeRouteEvent> get copyWith =>
      _$ShowFoundeRouteEventCopyWithImpl<ShowFoundeRouteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) showRoute,
    required TResult Function() openSearchDialog,
  }) {
    return showRoute(fromRoute, toRoute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? showRoute,
    TResult Function()? openSearchDialog,
  }) {
    return showRoute?.call(fromRoute, toRoute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? showRoute,
    TResult Function()? openSearchDialog,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute(fromRoute, toRoute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowFoundeRouteEvent value) showRoute,
    required TResult Function(OpenSearchDialogEvent value) openSearchDialog,
  }) {
    return showRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowFoundeRouteEvent value)? showRoute,
    TResult Function(OpenSearchDialogEvent value)? openSearchDialog,
  }) {
    return showRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowFoundeRouteEvent value)? showRoute,
    TResult Function(OpenSearchDialogEvent value)? openSearchDialog,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute(this);
    }
    return orElse();
  }
}

abstract class ShowFoundeRouteEvent implements RouteSearchEvent {
  const factory ShowFoundeRouteEvent(
      {required String fromRoute,
      required String toRoute}) = _$ShowFoundeRouteEvent;

  String get fromRoute;
  String get toRoute;
  @JsonKey(ignore: true)
  $ShowFoundeRouteEventCopyWith<ShowFoundeRouteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenSearchDialogEventCopyWith<$Res> {
  factory $OpenSearchDialogEventCopyWith(OpenSearchDialogEvent value,
          $Res Function(OpenSearchDialogEvent) then) =
      _$OpenSearchDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenSearchDialogEventCopyWithImpl<$Res>
    extends _$RouteSearchEventCopyWithImpl<$Res>
    implements $OpenSearchDialogEventCopyWith<$Res> {
  _$OpenSearchDialogEventCopyWithImpl(
      OpenSearchDialogEvent _value, $Res Function(OpenSearchDialogEvent) _then)
      : super(_value, (v) => _then(v as OpenSearchDialogEvent));

  @override
  OpenSearchDialogEvent get _value => super._value as OpenSearchDialogEvent;
}

/// @nodoc

class _$OpenSearchDialogEvent
    with DiagnosticableTreeMixin
    implements OpenSearchDialogEvent {
  const _$OpenSearchDialogEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchEvent.openSearchDialog()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchEvent.openSearchDialog'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpenSearchDialogEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromRoute, String toRoute) showRoute,
    required TResult Function() openSearchDialog,
  }) {
    return openSearchDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? showRoute,
    TResult Function()? openSearchDialog,
  }) {
    return openSearchDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromRoute, String toRoute)? showRoute,
    TResult Function()? openSearchDialog,
    required TResult orElse(),
  }) {
    if (openSearchDialog != null) {
      return openSearchDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowFoundeRouteEvent value) showRoute,
    required TResult Function(OpenSearchDialogEvent value) openSearchDialog,
  }) {
    return openSearchDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowFoundeRouteEvent value)? showRoute,
    TResult Function(OpenSearchDialogEvent value)? openSearchDialog,
  }) {
    return openSearchDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowFoundeRouteEvent value)? showRoute,
    TResult Function(OpenSearchDialogEvent value)? openSearchDialog,
    required TResult orElse(),
  }) {
    if (openSearchDialog != null) {
      return openSearchDialog(this);
    }
    return orElse();
  }
}

abstract class OpenSearchDialogEvent implements RouteSearchEvent {
  const factory OpenSearchDialogEvent() = _$OpenSearchDialogEvent;
}

/// @nodoc
class _$RouteSearchStateTearOff {
  const _$RouteSearchStateTearOff();

  InitSearchRouteState initPage() {
    return const InitSearchRouteState();
  }

  ShowFoundeRouteState showRoute(
      {required List<Map<String, String>> routesAndDates}) {
    return ShowFoundeRouteState(
      routesAndDates: routesAndDates,
    );
  }

  OpenSearchDialogState openSearchDialog() {
    return const OpenSearchDialogState();
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
        showRoute,
    required TResult Function() openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchRouteState value) initPage,
    required TResult Function(ShowFoundeRouteState value) showRoute,
    required TResult Function(OpenSearchDialogState value) openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
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
abstract class $InitSearchRouteStateCopyWith<$Res> {
  factory $InitSearchRouteStateCopyWith(InitSearchRouteState value,
          $Res Function(InitSearchRouteState) then) =
      _$InitSearchRouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitSearchRouteStateCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res>
    implements $InitSearchRouteStateCopyWith<$Res> {
  _$InitSearchRouteStateCopyWithImpl(
      InitSearchRouteState _value, $Res Function(InitSearchRouteState) _then)
      : super(_value, (v) => _then(v as InitSearchRouteState));

  @override
  InitSearchRouteState get _value => super._value as InitSearchRouteState;
}

/// @nodoc

class _$InitSearchRouteState
    with DiagnosticableTreeMixin
    implements InitSearchRouteState {
  const _$InitSearchRouteState();

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
        (other.runtimeType == runtimeType && other is InitSearchRouteState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPage,
    required TResult Function(List<Map<String, String>> routesAndDates)
        showRoute,
    required TResult Function() openSearchDialog,
  }) {
    return initPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
  }) {
    return initPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
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
    required TResult Function(InitSearchRouteState value) initPage,
    required TResult Function(ShowFoundeRouteState value) showRoute,
    required TResult Function(OpenSearchDialogState value) openSearchDialog,
  }) {
    return initPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
  }) {
    return initPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
    required TResult orElse(),
  }) {
    if (initPage != null) {
      return initPage(this);
    }
    return orElse();
  }
}

abstract class InitSearchRouteState implements RouteSearchState {
  const factory InitSearchRouteState() = _$InitSearchRouteState;
}

/// @nodoc
abstract class $ShowFoundeRouteStateCopyWith<$Res> {
  factory $ShowFoundeRouteStateCopyWith(ShowFoundeRouteState value,
          $Res Function(ShowFoundeRouteState) then) =
      _$ShowFoundeRouteStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, String>> routesAndDates});
}

/// @nodoc
class _$ShowFoundeRouteStateCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res>
    implements $ShowFoundeRouteStateCopyWith<$Res> {
  _$ShowFoundeRouteStateCopyWithImpl(
      ShowFoundeRouteState _value, $Res Function(ShowFoundeRouteState) _then)
      : super(_value, (v) => _then(v as ShowFoundeRouteState));

  @override
  ShowFoundeRouteState get _value => super._value as ShowFoundeRouteState;

  @override
  $Res call({
    Object? routesAndDates = freezed,
  }) {
    return _then(ShowFoundeRouteState(
      routesAndDates: routesAndDates == freezed
          ? _value.routesAndDates
          : routesAndDates // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$ShowFoundeRouteState
    with DiagnosticableTreeMixin
    implements ShowFoundeRouteState {
  const _$ShowFoundeRouteState({required this.routesAndDates});

  @override
  final List<Map<String, String>> routesAndDates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchState.showRoute(routesAndDates: $routesAndDates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchState.showRoute'))
      ..add(DiagnosticsProperty('routesAndDates', routesAndDates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowFoundeRouteState &&
            const DeepCollectionEquality()
                .equals(other.routesAndDates, routesAndDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(routesAndDates));

  @JsonKey(ignore: true)
  @override
  $ShowFoundeRouteStateCopyWith<ShowFoundeRouteState> get copyWith =>
      _$ShowFoundeRouteStateCopyWithImpl<ShowFoundeRouteState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPage,
    required TResult Function(List<Map<String, String>> routesAndDates)
        showRoute,
    required TResult Function() openSearchDialog,
  }) {
    return showRoute(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
  }) {
    return showRoute?.call(routesAndDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute(routesAndDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchRouteState value) initPage,
    required TResult Function(ShowFoundeRouteState value) showRoute,
    required TResult Function(OpenSearchDialogState value) openSearchDialog,
  }) {
    return showRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
  }) {
    return showRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute(this);
    }
    return orElse();
  }
}

abstract class ShowFoundeRouteState implements RouteSearchState {
  const factory ShowFoundeRouteState(
          {required List<Map<String, String>> routesAndDates}) =
      _$ShowFoundeRouteState;

  List<Map<String, String>> get routesAndDates;
  @JsonKey(ignore: true)
  $ShowFoundeRouteStateCopyWith<ShowFoundeRouteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenSearchDialogStateCopyWith<$Res> {
  factory $OpenSearchDialogStateCopyWith(OpenSearchDialogState value,
          $Res Function(OpenSearchDialogState) then) =
      _$OpenSearchDialogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenSearchDialogStateCopyWithImpl<$Res>
    extends _$RouteSearchStateCopyWithImpl<$Res>
    implements $OpenSearchDialogStateCopyWith<$Res> {
  _$OpenSearchDialogStateCopyWithImpl(
      OpenSearchDialogState _value, $Res Function(OpenSearchDialogState) _then)
      : super(_value, (v) => _then(v as OpenSearchDialogState));

  @override
  OpenSearchDialogState get _value => super._value as OpenSearchDialogState;
}

/// @nodoc

class _$OpenSearchDialogState
    with DiagnosticableTreeMixin
    implements OpenSearchDialogState {
  const _$OpenSearchDialogState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteSearchState.openSearchDialog()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteSearchState.openSearchDialog'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpenSearchDialogState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPage,
    required TResult Function(List<Map<String, String>> routesAndDates)
        showRoute,
    required TResult Function() openSearchDialog,
  }) {
    return openSearchDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
  }) {
    return openSearchDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPage,
    TResult Function(List<Map<String, String>> routesAndDates)? showRoute,
    TResult Function()? openSearchDialog,
    required TResult orElse(),
  }) {
    if (openSearchDialog != null) {
      return openSearchDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitSearchRouteState value) initPage,
    required TResult Function(ShowFoundeRouteState value) showRoute,
    required TResult Function(OpenSearchDialogState value) openSearchDialog,
  }) {
    return openSearchDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
  }) {
    return openSearchDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitSearchRouteState value)? initPage,
    TResult Function(ShowFoundeRouteState value)? showRoute,
    TResult Function(OpenSearchDialogState value)? openSearchDialog,
    required TResult orElse(),
  }) {
    if (openSearchDialog != null) {
      return openSearchDialog(this);
    }
    return orElse();
  }
}

abstract class OpenSearchDialogState implements RouteSearchState {
  const factory OpenSearchDialogState() = _$OpenSearchDialogState;
}
