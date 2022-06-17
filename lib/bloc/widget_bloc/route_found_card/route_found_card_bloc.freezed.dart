// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_found_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RouteFoundCardEventTearOff {
  const _$RouteFoundCardEventTearOff();

  ShowRouteEvent showRoute() {
    return const ShowRouteEvent();
  }

  ShowPhoneNumberEvent showPhoneNumber() {
    return const ShowPhoneNumberEvent();
  }

  CallEvent call({required String phoneNumber}) {
    return CallEvent(
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
const $RouteFoundCardEvent = _$RouteFoundCardEventTearOff();

/// @nodoc
mixin _$RouteFoundCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
    required TResult Function(String phoneNumber) call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowRouteEvent value) showRoute,
    required TResult Function(ShowPhoneNumberEvent value) showPhoneNumber,
    required TResult Function(CallEvent value) call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteFoundCardEventCopyWith<$Res> {
  factory $RouteFoundCardEventCopyWith(
          RouteFoundCardEvent value, $Res Function(RouteFoundCardEvent) then) =
      _$RouteFoundCardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteFoundCardEventCopyWithImpl<$Res>
    implements $RouteFoundCardEventCopyWith<$Res> {
  _$RouteFoundCardEventCopyWithImpl(this._value, this._then);

  final RouteFoundCardEvent _value;
  // ignore: unused_field
  final $Res Function(RouteFoundCardEvent) _then;
}

/// @nodoc
abstract class $ShowRouteEventCopyWith<$Res> {
  factory $ShowRouteEventCopyWith(
          ShowRouteEvent value, $Res Function(ShowRouteEvent) then) =
      _$ShowRouteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowRouteEventCopyWithImpl<$Res>
    extends _$RouteFoundCardEventCopyWithImpl<$Res>
    implements $ShowRouteEventCopyWith<$Res> {
  _$ShowRouteEventCopyWithImpl(
      ShowRouteEvent _value, $Res Function(ShowRouteEvent) _then)
      : super(_value, (v) => _then(v as ShowRouteEvent));

  @override
  ShowRouteEvent get _value => super._value as ShowRouteEvent;
}

/// @nodoc

class _$ShowRouteEvent implements ShowRouteEvent {
  const _$ShowRouteEvent();

  @override
  String toString() {
    return 'RouteFoundCardEvent.showRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowRouteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
    required TResult Function(String phoneNumber) call,
  }) {
    return showRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
  }) {
    return showRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowRouteEvent value) showRoute,
    required TResult Function(ShowPhoneNumberEvent value) showPhoneNumber,
    required TResult Function(CallEvent value) call,
  }) {
    return showRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
  }) {
    return showRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute(this);
    }
    return orElse();
  }
}

abstract class ShowRouteEvent implements RouteFoundCardEvent {
  const factory ShowRouteEvent() = _$ShowRouteEvent;
}

/// @nodoc
abstract class $ShowPhoneNumberEventCopyWith<$Res> {
  factory $ShowPhoneNumberEventCopyWith(ShowPhoneNumberEvent value,
          $Res Function(ShowPhoneNumberEvent) then) =
      _$ShowPhoneNumberEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowPhoneNumberEventCopyWithImpl<$Res>
    extends _$RouteFoundCardEventCopyWithImpl<$Res>
    implements $ShowPhoneNumberEventCopyWith<$Res> {
  _$ShowPhoneNumberEventCopyWithImpl(
      ShowPhoneNumberEvent _value, $Res Function(ShowPhoneNumberEvent) _then)
      : super(_value, (v) => _then(v as ShowPhoneNumberEvent));

  @override
  ShowPhoneNumberEvent get _value => super._value as ShowPhoneNumberEvent;
}

/// @nodoc

class _$ShowPhoneNumberEvent implements ShowPhoneNumberEvent {
  const _$ShowPhoneNumberEvent();

  @override
  String toString() {
    return 'RouteFoundCardEvent.showPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowPhoneNumberEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
    required TResult Function(String phoneNumber) call,
  }) {
    return showPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
  }) {
    return showPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
    required TResult orElse(),
  }) {
    if (showPhoneNumber != null) {
      return showPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowRouteEvent value) showRoute,
    required TResult Function(ShowPhoneNumberEvent value) showPhoneNumber,
    required TResult Function(CallEvent value) call,
  }) {
    return showPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
  }) {
    return showPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
    required TResult orElse(),
  }) {
    if (showPhoneNumber != null) {
      return showPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class ShowPhoneNumberEvent implements RouteFoundCardEvent {
  const factory ShowPhoneNumberEvent() = _$ShowPhoneNumberEvent;
}

/// @nodoc
abstract class $CallEventCopyWith<$Res> {
  factory $CallEventCopyWith(CallEvent value, $Res Function(CallEvent) then) =
      _$CallEventCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$CallEventCopyWithImpl<$Res>
    extends _$RouteFoundCardEventCopyWithImpl<$Res>
    implements $CallEventCopyWith<$Res> {
  _$CallEventCopyWithImpl(CallEvent _value, $Res Function(CallEvent) _then)
      : super(_value, (v) => _then(v as CallEvent));

  @override
  CallEvent get _value => super._value as CallEvent;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(CallEvent(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CallEvent implements CallEvent {
  const _$CallEvent({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RouteFoundCardEvent.call(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CallEvent &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $CallEventCopyWith<CallEvent> get copyWith =>
      _$CallEventCopyWithImpl<CallEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
    required TResult Function(String phoneNumber) call,
  }) {
    return call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
  }) {
    return call?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    TResult Function(String phoneNumber)? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowRouteEvent value) showRoute,
    required TResult Function(ShowPhoneNumberEvent value) showPhoneNumber,
    required TResult Function(CallEvent value) call,
  }) {
    return call(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
  }) {
    return call?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowRouteEvent value)? showRoute,
    TResult Function(ShowPhoneNumberEvent value)? showPhoneNumber,
    TResult Function(CallEvent value)? call,
    required TResult orElse(),
  }) {
    if (call != null) {
      return call(this);
    }
    return orElse();
  }
}

abstract class CallEvent implements RouteFoundCardEvent {
  const factory CallEvent({required String phoneNumber}) = _$CallEvent;

  String get phoneNumber;
  @JsonKey(ignore: true)
  $CallEventCopyWith<CallEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RouteFoundCardStateTearOff {
  const _$RouteFoundCardStateTearOff();

  InitRouteFoundCardState initWidget() {
    return const InitRouteFoundCardState();
  }

  ShowRouteState showRoute() {
    return const ShowRouteState();
  }

  ShowPhoneNumberState showPhoneNumber() {
    return const ShowPhoneNumberState();
  }
}

/// @nodoc
const $RouteFoundCardState = _$RouteFoundCardStateTearOff();

/// @nodoc
mixin _$RouteFoundCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initWidget,
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRouteFoundCardState value) initWidget,
    required TResult Function(ShowRouteState value) showRoute,
    required TResult Function(ShowPhoneNumberState value) showPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteFoundCardStateCopyWith<$Res> {
  factory $RouteFoundCardStateCopyWith(
          RouteFoundCardState value, $Res Function(RouteFoundCardState) then) =
      _$RouteFoundCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouteFoundCardStateCopyWithImpl<$Res>
    implements $RouteFoundCardStateCopyWith<$Res> {
  _$RouteFoundCardStateCopyWithImpl(this._value, this._then);

  final RouteFoundCardState _value;
  // ignore: unused_field
  final $Res Function(RouteFoundCardState) _then;
}

/// @nodoc
abstract class $InitRouteFoundCardStateCopyWith<$Res> {
  factory $InitRouteFoundCardStateCopyWith(InitRouteFoundCardState value,
          $Res Function(InitRouteFoundCardState) then) =
      _$InitRouteFoundCardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitRouteFoundCardStateCopyWithImpl<$Res>
    extends _$RouteFoundCardStateCopyWithImpl<$Res>
    implements $InitRouteFoundCardStateCopyWith<$Res> {
  _$InitRouteFoundCardStateCopyWithImpl(InitRouteFoundCardState _value,
      $Res Function(InitRouteFoundCardState) _then)
      : super(_value, (v) => _then(v as InitRouteFoundCardState));

  @override
  InitRouteFoundCardState get _value => super._value as InitRouteFoundCardState;
}

/// @nodoc

class _$InitRouteFoundCardState implements InitRouteFoundCardState {
  const _$InitRouteFoundCardState();

  @override
  String toString() {
    return 'RouteFoundCardState.initWidget()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitRouteFoundCardState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initWidget,
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
  }) {
    return initWidget();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
  }) {
    return initWidget?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    required TResult orElse(),
  }) {
    if (initWidget != null) {
      return initWidget();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRouteFoundCardState value) initWidget,
    required TResult Function(ShowRouteState value) showRoute,
    required TResult Function(ShowPhoneNumberState value) showPhoneNumber,
  }) {
    return initWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
  }) {
    return initWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
    required TResult orElse(),
  }) {
    if (initWidget != null) {
      return initWidget(this);
    }
    return orElse();
  }
}

abstract class InitRouteFoundCardState implements RouteFoundCardState {
  const factory InitRouteFoundCardState() = _$InitRouteFoundCardState;
}

/// @nodoc
abstract class $ShowRouteStateCopyWith<$Res> {
  factory $ShowRouteStateCopyWith(
          ShowRouteState value, $Res Function(ShowRouteState) then) =
      _$ShowRouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowRouteStateCopyWithImpl<$Res>
    extends _$RouteFoundCardStateCopyWithImpl<$Res>
    implements $ShowRouteStateCopyWith<$Res> {
  _$ShowRouteStateCopyWithImpl(
      ShowRouteState _value, $Res Function(ShowRouteState) _then)
      : super(_value, (v) => _then(v as ShowRouteState));

  @override
  ShowRouteState get _value => super._value as ShowRouteState;
}

/// @nodoc

class _$ShowRouteState implements ShowRouteState {
  const _$ShowRouteState();

  @override
  String toString() {
    return 'RouteFoundCardState.showRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowRouteState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initWidget,
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
  }) {
    return showRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
  }) {
    return showRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRouteFoundCardState value) initWidget,
    required TResult Function(ShowRouteState value) showRoute,
    required TResult Function(ShowPhoneNumberState value) showPhoneNumber,
  }) {
    return showRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
  }) {
    return showRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
    required TResult orElse(),
  }) {
    if (showRoute != null) {
      return showRoute(this);
    }
    return orElse();
  }
}

abstract class ShowRouteState implements RouteFoundCardState {
  const factory ShowRouteState() = _$ShowRouteState;
}

/// @nodoc
abstract class $ShowPhoneNumberStateCopyWith<$Res> {
  factory $ShowPhoneNumberStateCopyWith(ShowPhoneNumberState value,
          $Res Function(ShowPhoneNumberState) then) =
      _$ShowPhoneNumberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowPhoneNumberStateCopyWithImpl<$Res>
    extends _$RouteFoundCardStateCopyWithImpl<$Res>
    implements $ShowPhoneNumberStateCopyWith<$Res> {
  _$ShowPhoneNumberStateCopyWithImpl(
      ShowPhoneNumberState _value, $Res Function(ShowPhoneNumberState) _then)
      : super(_value, (v) => _then(v as ShowPhoneNumberState));

  @override
  ShowPhoneNumberState get _value => super._value as ShowPhoneNumberState;
}

/// @nodoc

class _$ShowPhoneNumberState implements ShowPhoneNumberState {
  const _$ShowPhoneNumberState();

  @override
  String toString() {
    return 'RouteFoundCardState.showPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowPhoneNumberState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initWidget,
    required TResult Function() showRoute,
    required TResult Function() showPhoneNumber,
  }) {
    return showPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
  }) {
    return showPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initWidget,
    TResult Function()? showRoute,
    TResult Function()? showPhoneNumber,
    required TResult orElse(),
  }) {
    if (showPhoneNumber != null) {
      return showPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitRouteFoundCardState value) initWidget,
    required TResult Function(ShowRouteState value) showRoute,
    required TResult Function(ShowPhoneNumberState value) showPhoneNumber,
  }) {
    return showPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
  }) {
    return showPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitRouteFoundCardState value)? initWidget,
    TResult Function(ShowRouteState value)? showRoute,
    TResult Function(ShowPhoneNumberState value)? showPhoneNumber,
    required TResult orElse(),
  }) {
    if (showPhoneNumber != null) {
      return showPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class ShowPhoneNumberState implements RouteFoundCardState {
  const factory ShowPhoneNumberState() = _$ShowPhoneNumberState;
}
