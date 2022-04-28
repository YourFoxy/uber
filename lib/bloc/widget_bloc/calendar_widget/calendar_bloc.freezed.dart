// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CalendarEventTearOff {
  const _$CalendarEventTearOff();

  ShowMonthEvent showMonth() {
    return const ShowMonthEvent();
  }

  GoToNextMonthEvent goToNextMonth() {
    return const GoToNextMonthEvent();
  }

  GoToPreviousMonthEvent goToPreviousMonth() {
    return const GoToPreviousMonthEvent();
  }
}

/// @nodoc
const $CalendarEvent = _$CalendarEventTearOff();

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMonth,
    required TResult Function() goToNextMonth,
    required TResult Function() goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(GoToNextMonthEvent value) goToNextMonth,
    required TResult Function(GoToPreviousMonthEvent value) goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  final CalendarEvent _value;
  // ignore: unused_field
  final $Res Function(CalendarEvent) _then;
}

/// @nodoc
abstract class $ShowMonthEventCopyWith<$Res> {
  factory $ShowMonthEventCopyWith(
          ShowMonthEvent value, $Res Function(ShowMonthEvent) then) =
      _$ShowMonthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowMonthEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $ShowMonthEventCopyWith<$Res> {
  _$ShowMonthEventCopyWithImpl(
      ShowMonthEvent _value, $Res Function(ShowMonthEvent) _then)
      : super(_value, (v) => _then(v as ShowMonthEvent));

  @override
  ShowMonthEvent get _value => super._value as ShowMonthEvent;
}

/// @nodoc

class _$ShowMonthEvent implements ShowMonthEvent {
  const _$ShowMonthEvent();

  @override
  String toString() {
    return 'CalendarEvent.showMonth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowMonthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMonth,
    required TResult Function() goToNextMonth,
    required TResult Function() goToPreviousMonth,
  }) {
    return showMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
  }) {
    return showMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (showMonth != null) {
      return showMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(GoToNextMonthEvent value) goToNextMonth,
    required TResult Function(GoToPreviousMonthEvent value) goToPreviousMonth,
  }) {
    return showMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
  }) {
    return showMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (showMonth != null) {
      return showMonth(this);
    }
    return orElse();
  }
}

abstract class ShowMonthEvent implements CalendarEvent {
  const factory ShowMonthEvent() = _$ShowMonthEvent;
}

/// @nodoc
abstract class $GoToNextMonthEventCopyWith<$Res> {
  factory $GoToNextMonthEventCopyWith(
          GoToNextMonthEvent value, $Res Function(GoToNextMonthEvent) then) =
      _$GoToNextMonthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoToNextMonthEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $GoToNextMonthEventCopyWith<$Res> {
  _$GoToNextMonthEventCopyWithImpl(
      GoToNextMonthEvent _value, $Res Function(GoToNextMonthEvent) _then)
      : super(_value, (v) => _then(v as GoToNextMonthEvent));

  @override
  GoToNextMonthEvent get _value => super._value as GoToNextMonthEvent;
}

/// @nodoc

class _$GoToNextMonthEvent implements GoToNextMonthEvent {
  const _$GoToNextMonthEvent();

  @override
  String toString() {
    return 'CalendarEvent.goToNextMonth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoToNextMonthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMonth,
    required TResult Function() goToNextMonth,
    required TResult Function() goToPreviousMonth,
  }) {
    return goToNextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
  }) {
    return goToNextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToNextMonth != null) {
      return goToNextMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(GoToNextMonthEvent value) goToNextMonth,
    required TResult Function(GoToPreviousMonthEvent value) goToPreviousMonth,
  }) {
    return goToNextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
  }) {
    return goToNextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToNextMonth != null) {
      return goToNextMonth(this);
    }
    return orElse();
  }
}

abstract class GoToNextMonthEvent implements CalendarEvent {
  const factory GoToNextMonthEvent() = _$GoToNextMonthEvent;
}

/// @nodoc
abstract class $GoToPreviousMonthEventCopyWith<$Res> {
  factory $GoToPreviousMonthEventCopyWith(GoToPreviousMonthEvent value,
          $Res Function(GoToPreviousMonthEvent) then) =
      _$GoToPreviousMonthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoToPreviousMonthEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements $GoToPreviousMonthEventCopyWith<$Res> {
  _$GoToPreviousMonthEventCopyWithImpl(GoToPreviousMonthEvent _value,
      $Res Function(GoToPreviousMonthEvent) _then)
      : super(_value, (v) => _then(v as GoToPreviousMonthEvent));

  @override
  GoToPreviousMonthEvent get _value => super._value as GoToPreviousMonthEvent;
}

/// @nodoc

class _$GoToPreviousMonthEvent implements GoToPreviousMonthEvent {
  const _$GoToPreviousMonthEvent();

  @override
  String toString() {
    return 'CalendarEvent.goToPreviousMonth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GoToPreviousMonthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showMonth,
    required TResult Function() goToNextMonth,
    required TResult Function() goToPreviousMonth,
  }) {
    return goToPreviousMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
  }) {
    return goToPreviousMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showMonth,
    TResult Function()? goToNextMonth,
    TResult Function()? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToPreviousMonth != null) {
      return goToPreviousMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowMonthEvent value) showMonth,
    required TResult Function(GoToNextMonthEvent value) goToNextMonth,
    required TResult Function(GoToPreviousMonthEvent value) goToPreviousMonth,
  }) {
    return goToPreviousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
  }) {
    return goToPreviousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowMonthEvent value)? showMonth,
    TResult Function(GoToNextMonthEvent value)? goToNextMonth,
    TResult Function(GoToPreviousMonthEvent value)? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToPreviousMonth != null) {
      return goToPreviousMonth(this);
    }
    return orElse();
  }
}

abstract class GoToPreviousMonthEvent implements CalendarEvent {
  const factory GoToPreviousMonthEvent() = _$GoToPreviousMonthEvent;
}

/// @nodoc
class _$CalendarStateTearOff {
  const _$CalendarStateTearOff();

  InitialState initial() {
    return const InitialState();
  }

  ShowMonthState showMonth(
      {required String month,
      required int year,
      required List<String> daysList}) {
    return ShowMonthState(
      month: month,
      year: year,
      daysList: daysList,
    );
  }

  GoToNextMonthState goToNextMonth(
      {required String month,
      required int year,
      required List<String> daysList}) {
    return GoToNextMonthState(
      month: month,
      year: year,
      daysList: daysList,
    );
  }

  GoToPreviousMonthState goToPreviousMonth(
      {required String month,
      required int year,
      required List<String> daysList}) {
    return GoToPreviousMonthState(
      month: month,
      year: year,
      daysList: daysList,
    );
  }
}

/// @nodoc
const $CalendarState = _$CalendarStateTearOff();

/// @nodoc
mixin _$CalendarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String month, int year, List<String> daysList)
        showMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToNextMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ShowMonthState value) showMonth,
    required TResult Function(GoToNextMonthState value) goToNextMonth,
    required TResult Function(GoToPreviousMonthState value) goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;
}

/// @nodoc
abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<$Res> extends _$CalendarStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(
      InitialState _value, $Res Function(InitialState) _then)
      : super(_value, (v) => _then(v as InitialState));

  @override
  InitialState get _value => super._value as InitialState;
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'CalendarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String month, int year, List<String> daysList)
        showMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToNextMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToPreviousMonth,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ShowMonthState value) showMonth,
    required TResult Function(GoToNextMonthState value) goToNextMonth,
    required TResult Function(GoToPreviousMonthState value) goToPreviousMonth,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements CalendarState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class $ShowMonthStateCopyWith<$Res> {
  factory $ShowMonthStateCopyWith(
          ShowMonthState value, $Res Function(ShowMonthState) then) =
      _$ShowMonthStateCopyWithImpl<$Res>;
  $Res call({String month, int year, List<String> daysList});
}

/// @nodoc
class _$ShowMonthStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements $ShowMonthStateCopyWith<$Res> {
  _$ShowMonthStateCopyWithImpl(
      ShowMonthState _value, $Res Function(ShowMonthState) _then)
      : super(_value, (v) => _then(v as ShowMonthState));

  @override
  ShowMonthState get _value => super._value as ShowMonthState;

  @override
  $Res call({
    Object? month = freezed,
    Object? year = freezed,
    Object? daysList = freezed,
  }) {
    return _then(ShowMonthState(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      daysList: daysList == freezed
          ? _value.daysList
          : daysList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ShowMonthState implements ShowMonthState {
  const _$ShowMonthState(
      {required this.month, required this.year, required this.daysList});

  @override
  final String month;
  @override
  final int year;
  @override
  final List<String> daysList;

  @override
  String toString() {
    return 'CalendarState.showMonth(month: $month, year: $year, daysList: $daysList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowMonthState &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.daysList, daysList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(daysList));

  @JsonKey(ignore: true)
  @override
  $ShowMonthStateCopyWith<ShowMonthState> get copyWith =>
      _$ShowMonthStateCopyWithImpl<ShowMonthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String month, int year, List<String> daysList)
        showMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToNextMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToPreviousMonth,
  }) {
    return showMonth(month, year, daysList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
  }) {
    return showMonth?.call(month, year, daysList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (showMonth != null) {
      return showMonth(month, year, daysList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ShowMonthState value) showMonth,
    required TResult Function(GoToNextMonthState value) goToNextMonth,
    required TResult Function(GoToPreviousMonthState value) goToPreviousMonth,
  }) {
    return showMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
  }) {
    return showMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (showMonth != null) {
      return showMonth(this);
    }
    return orElse();
  }
}

abstract class ShowMonthState implements CalendarState {
  const factory ShowMonthState(
      {required String month,
      required int year,
      required List<String> daysList}) = _$ShowMonthState;

  String get month;
  int get year;
  List<String> get daysList;
  @JsonKey(ignore: true)
  $ShowMonthStateCopyWith<ShowMonthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoToNextMonthStateCopyWith<$Res> {
  factory $GoToNextMonthStateCopyWith(
          GoToNextMonthState value, $Res Function(GoToNextMonthState) then) =
      _$GoToNextMonthStateCopyWithImpl<$Res>;
  $Res call({String month, int year, List<String> daysList});
}

/// @nodoc
class _$GoToNextMonthStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements $GoToNextMonthStateCopyWith<$Res> {
  _$GoToNextMonthStateCopyWithImpl(
      GoToNextMonthState _value, $Res Function(GoToNextMonthState) _then)
      : super(_value, (v) => _then(v as GoToNextMonthState));

  @override
  GoToNextMonthState get _value => super._value as GoToNextMonthState;

  @override
  $Res call({
    Object? month = freezed,
    Object? year = freezed,
    Object? daysList = freezed,
  }) {
    return _then(GoToNextMonthState(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      daysList: daysList == freezed
          ? _value.daysList
          : daysList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GoToNextMonthState implements GoToNextMonthState {
  const _$GoToNextMonthState(
      {required this.month, required this.year, required this.daysList});

  @override
  final String month;
  @override
  final int year;
  @override
  final List<String> daysList;

  @override
  String toString() {
    return 'CalendarState.goToNextMonth(month: $month, year: $year, daysList: $daysList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoToNextMonthState &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.daysList, daysList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(daysList));

  @JsonKey(ignore: true)
  @override
  $GoToNextMonthStateCopyWith<GoToNextMonthState> get copyWith =>
      _$GoToNextMonthStateCopyWithImpl<GoToNextMonthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String month, int year, List<String> daysList)
        showMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToNextMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToPreviousMonth,
  }) {
    return goToNextMonth(month, year, daysList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
  }) {
    return goToNextMonth?.call(month, year, daysList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToNextMonth != null) {
      return goToNextMonth(month, year, daysList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ShowMonthState value) showMonth,
    required TResult Function(GoToNextMonthState value) goToNextMonth,
    required TResult Function(GoToPreviousMonthState value) goToPreviousMonth,
  }) {
    return goToNextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
  }) {
    return goToNextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToNextMonth != null) {
      return goToNextMonth(this);
    }
    return orElse();
  }
}

abstract class GoToNextMonthState implements CalendarState {
  const factory GoToNextMonthState(
      {required String month,
      required int year,
      required List<String> daysList}) = _$GoToNextMonthState;

  String get month;
  int get year;
  List<String> get daysList;
  @JsonKey(ignore: true)
  $GoToNextMonthStateCopyWith<GoToNextMonthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoToPreviousMonthStateCopyWith<$Res> {
  factory $GoToPreviousMonthStateCopyWith(GoToPreviousMonthState value,
          $Res Function(GoToPreviousMonthState) then) =
      _$GoToPreviousMonthStateCopyWithImpl<$Res>;
  $Res call({String month, int year, List<String> daysList});
}

/// @nodoc
class _$GoToPreviousMonthStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements $GoToPreviousMonthStateCopyWith<$Res> {
  _$GoToPreviousMonthStateCopyWithImpl(GoToPreviousMonthState _value,
      $Res Function(GoToPreviousMonthState) _then)
      : super(_value, (v) => _then(v as GoToPreviousMonthState));

  @override
  GoToPreviousMonthState get _value => super._value as GoToPreviousMonthState;

  @override
  $Res call({
    Object? month = freezed,
    Object? year = freezed,
    Object? daysList = freezed,
  }) {
    return _then(GoToPreviousMonthState(
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      daysList: daysList == freezed
          ? _value.daysList
          : daysList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GoToPreviousMonthState implements GoToPreviousMonthState {
  const _$GoToPreviousMonthState(
      {required this.month, required this.year, required this.daysList});

  @override
  final String month;
  @override
  final int year;
  @override
  final List<String> daysList;

  @override
  String toString() {
    return 'CalendarState.goToPreviousMonth(month: $month, year: $year, daysList: $daysList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoToPreviousMonthState &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.daysList, daysList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(daysList));

  @JsonKey(ignore: true)
  @override
  $GoToPreviousMonthStateCopyWith<GoToPreviousMonthState> get copyWith =>
      _$GoToPreviousMonthStateCopyWithImpl<GoToPreviousMonthState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String month, int year, List<String> daysList)
        showMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToNextMonth,
    required TResult Function(String month, int year, List<String> daysList)
        goToPreviousMonth,
  }) {
    return goToPreviousMonth(month, year, daysList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
  }) {
    return goToPreviousMonth?.call(month, year, daysList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String month, int year, List<String> daysList)? showMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToNextMonth,
    TResult Function(String month, int year, List<String> daysList)?
        goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToPreviousMonth != null) {
      return goToPreviousMonth(month, year, daysList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ShowMonthState value) showMonth,
    required TResult Function(GoToNextMonthState value) goToNextMonth,
    required TResult Function(GoToPreviousMonthState value) goToPreviousMonth,
  }) {
    return goToPreviousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
  }) {
    return goToPreviousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ShowMonthState value)? showMonth,
    TResult Function(GoToNextMonthState value)? goToNextMonth,
    TResult Function(GoToPreviousMonthState value)? goToPreviousMonth,
    required TResult orElse(),
  }) {
    if (goToPreviousMonth != null) {
      return goToPreviousMonth(this);
    }
    return orElse();
  }
}

abstract class GoToPreviousMonthState implements CalendarState {
  const factory GoToPreviousMonthState(
      {required String month,
      required int year,
      required List<String> daysList}) = _$GoToPreviousMonthState;

  String get month;
  int get year;
  List<String> get daysList;
  @JsonKey(ignore: true)
  $GoToPreviousMonthStateCopyWith<GoToPreviousMonthState> get copyWith =>
      throw _privateConstructorUsedError;
}
