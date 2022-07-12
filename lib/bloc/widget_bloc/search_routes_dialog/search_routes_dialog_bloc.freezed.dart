// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_routes_dialog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchRoutesDialogEventTearOff {
  const _$SearchRoutesDialogEventTearOff();

  ShowAllDeparturePointsEvent showAllDeparturePoints(
      {required BuildContext context}) {
    return ShowAllDeparturePointsEvent(
      context: context,
    );
  }

  ShowAllArrivalPointsEvent showAllArrivalPoints(
      {required BuildContext context}) {
    return ShowAllArrivalPointsEvent(
      context: context,
    );
  }

  ShowCalendarForSearchEvent showCalendar() {
    return const ShowCalendarForSearchEvent();
  }

  CloseAllWidgetEvent closeWidget() {
    return const CloseAllWidgetEvent();
  }
}

/// @nodoc
const $SearchRoutesDialogEvent = _$SearchRoutesDialogEventTearOff();

/// @nodoc
mixin _$SearchRoutesDialogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) showAllDeparturePoints,
    required TResult Function(BuildContext context) showAllArrivalPoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAllDeparturePointsEvent value)
        showAllDeparturePoints,
    required TResult Function(ShowAllArrivalPointsEvent value)
        showAllArrivalPoints,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
    required TResult Function(CloseAllWidgetEvent value) closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRoutesDialogEventCopyWith<$Res> {
  factory $SearchRoutesDialogEventCopyWith(SearchRoutesDialogEvent value,
          $Res Function(SearchRoutesDialogEvent) then) =
      _$SearchRoutesDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchRoutesDialogEventCopyWithImpl<$Res>
    implements $SearchRoutesDialogEventCopyWith<$Res> {
  _$SearchRoutesDialogEventCopyWithImpl(this._value, this._then);

  final SearchRoutesDialogEvent _value;
  // ignore: unused_field
  final $Res Function(SearchRoutesDialogEvent) _then;
}

/// @nodoc
abstract class $ShowAllDeparturePointsEventCopyWith<$Res> {
  factory $ShowAllDeparturePointsEventCopyWith(
          ShowAllDeparturePointsEvent value,
          $Res Function(ShowAllDeparturePointsEvent) then) =
      _$ShowAllDeparturePointsEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$ShowAllDeparturePointsEventCopyWithImpl<$Res>
    extends _$SearchRoutesDialogEventCopyWithImpl<$Res>
    implements $ShowAllDeparturePointsEventCopyWith<$Res> {
  _$ShowAllDeparturePointsEventCopyWithImpl(ShowAllDeparturePointsEvent _value,
      $Res Function(ShowAllDeparturePointsEvent) _then)
      : super(_value, (v) => _then(v as ShowAllDeparturePointsEvent));

  @override
  ShowAllDeparturePointsEvent get _value =>
      super._value as ShowAllDeparturePointsEvent;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(ShowAllDeparturePointsEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ShowAllDeparturePointsEvent implements ShowAllDeparturePointsEvent {
  const _$ShowAllDeparturePointsEvent({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SearchRoutesDialogEvent.showAllDeparturePoints(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowAllDeparturePointsEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $ShowAllDeparturePointsEventCopyWith<ShowAllDeparturePointsEvent>
      get copyWith => _$ShowAllDeparturePointsEventCopyWithImpl<
          ShowAllDeparturePointsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) showAllDeparturePoints,
    required TResult Function(BuildContext context) showAllArrivalPoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return showAllDeparturePoints(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return showAllDeparturePoints?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllDeparturePoints != null) {
      return showAllDeparturePoints(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAllDeparturePointsEvent value)
        showAllDeparturePoints,
    required TResult Function(ShowAllArrivalPointsEvent value)
        showAllArrivalPoints,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
    required TResult Function(CloseAllWidgetEvent value) closeWidget,
  }) {
    return showAllDeparturePoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
  }) {
    return showAllDeparturePoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllDeparturePoints != null) {
      return showAllDeparturePoints(this);
    }
    return orElse();
  }
}

abstract class ShowAllDeparturePointsEvent implements SearchRoutesDialogEvent {
  const factory ShowAllDeparturePointsEvent({required BuildContext context}) =
      _$ShowAllDeparturePointsEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  $ShowAllDeparturePointsEventCopyWith<ShowAllDeparturePointsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAllArrivalPointsEventCopyWith<$Res> {
  factory $ShowAllArrivalPointsEventCopyWith(ShowAllArrivalPointsEvent value,
          $Res Function(ShowAllArrivalPointsEvent) then) =
      _$ShowAllArrivalPointsEventCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class _$ShowAllArrivalPointsEventCopyWithImpl<$Res>
    extends _$SearchRoutesDialogEventCopyWithImpl<$Res>
    implements $ShowAllArrivalPointsEventCopyWith<$Res> {
  _$ShowAllArrivalPointsEventCopyWithImpl(ShowAllArrivalPointsEvent _value,
      $Res Function(ShowAllArrivalPointsEvent) _then)
      : super(_value, (v) => _then(v as ShowAllArrivalPointsEvent));

  @override
  ShowAllArrivalPointsEvent get _value =>
      super._value as ShowAllArrivalPointsEvent;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(ShowAllArrivalPointsEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ShowAllArrivalPointsEvent implements ShowAllArrivalPointsEvent {
  const _$ShowAllArrivalPointsEvent({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SearchRoutesDialogEvent.showAllArrivalPoints(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowAllArrivalPointsEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $ShowAllArrivalPointsEventCopyWith<ShowAllArrivalPointsEvent> get copyWith =>
      _$ShowAllArrivalPointsEventCopyWithImpl<ShowAllArrivalPointsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) showAllDeparturePoints,
    required TResult Function(BuildContext context) showAllArrivalPoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return showAllArrivalPoints(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return showAllArrivalPoints?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllArrivalPoints != null) {
      return showAllArrivalPoints(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAllDeparturePointsEvent value)
        showAllDeparturePoints,
    required TResult Function(ShowAllArrivalPointsEvent value)
        showAllArrivalPoints,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
    required TResult Function(CloseAllWidgetEvent value) closeWidget,
  }) {
    return showAllArrivalPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
  }) {
    return showAllArrivalPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllArrivalPoints != null) {
      return showAllArrivalPoints(this);
    }
    return orElse();
  }
}

abstract class ShowAllArrivalPointsEvent implements SearchRoutesDialogEvent {
  const factory ShowAllArrivalPointsEvent({required BuildContext context}) =
      _$ShowAllArrivalPointsEvent;

  BuildContext get context;
  @JsonKey(ignore: true)
  $ShowAllArrivalPointsEventCopyWith<ShowAllArrivalPointsEvent> get copyWith =>
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
    extends _$SearchRoutesDialogEventCopyWithImpl<$Res>
    implements $ShowCalendarForSearchEventCopyWith<$Res> {
  _$ShowCalendarForSearchEventCopyWithImpl(ShowCalendarForSearchEvent _value,
      $Res Function(ShowCalendarForSearchEvent) _then)
      : super(_value, (v) => _then(v as ShowCalendarForSearchEvent));

  @override
  ShowCalendarForSearchEvent get _value =>
      super._value as ShowCalendarForSearchEvent;
}

/// @nodoc

class _$ShowCalendarForSearchEvent implements ShowCalendarForSearchEvent {
  const _$ShowCalendarForSearchEvent();

  @override
  String toString() {
    return 'SearchRoutesDialogEvent.showCalendar()';
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
    required TResult Function(BuildContext context) showAllDeparturePoints,
    required TResult Function(BuildContext context) showAllArrivalPoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return showCalendar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return showCalendar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
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
    required TResult Function(ShowAllDeparturePointsEvent value)
        showAllDeparturePoints,
    required TResult Function(ShowAllArrivalPointsEvent value)
        showAllArrivalPoints,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
    required TResult Function(CloseAllWidgetEvent value) closeWidget,
  }) {
    return showCalendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
  }) {
    return showCalendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
    required TResult orElse(),
  }) {
    if (showCalendar != null) {
      return showCalendar(this);
    }
    return orElse();
  }
}

abstract class ShowCalendarForSearchEvent implements SearchRoutesDialogEvent {
  const factory ShowCalendarForSearchEvent() = _$ShowCalendarForSearchEvent;
}

/// @nodoc
abstract class $CloseAllWidgetEventCopyWith<$Res> {
  factory $CloseAllWidgetEventCopyWith(
          CloseAllWidgetEvent value, $Res Function(CloseAllWidgetEvent) then) =
      _$CloseAllWidgetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseAllWidgetEventCopyWithImpl<$Res>
    extends _$SearchRoutesDialogEventCopyWithImpl<$Res>
    implements $CloseAllWidgetEventCopyWith<$Res> {
  _$CloseAllWidgetEventCopyWithImpl(
      CloseAllWidgetEvent _value, $Res Function(CloseAllWidgetEvent) _then)
      : super(_value, (v) => _then(v as CloseAllWidgetEvent));

  @override
  CloseAllWidgetEvent get _value => super._value as CloseAllWidgetEvent;
}

/// @nodoc

class _$CloseAllWidgetEvent implements CloseAllWidgetEvent {
  const _$CloseAllWidgetEvent();

  @override
  String toString() {
    return 'SearchRoutesDialogEvent.closeWidget()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseAllWidgetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) showAllDeparturePoints,
    required TResult Function(BuildContext context) showAllArrivalPoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return closeWidget();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return closeWidget?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? showAllDeparturePoints,
    TResult Function(BuildContext context)? showAllArrivalPoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) {
    if (closeWidget != null) {
      return closeWidget();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAllDeparturePointsEvent value)
        showAllDeparturePoints,
    required TResult Function(ShowAllArrivalPointsEvent value)
        showAllArrivalPoints,
    required TResult Function(ShowCalendarForSearchEvent value) showCalendar,
    required TResult Function(CloseAllWidgetEvent value) closeWidget,
  }) {
    return closeWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
  }) {
    return closeWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAllDeparturePointsEvent value)? showAllDeparturePoints,
    TResult Function(ShowAllArrivalPointsEvent value)? showAllArrivalPoints,
    TResult Function(ShowCalendarForSearchEvent value)? showCalendar,
    TResult Function(CloseAllWidgetEvent value)? closeWidget,
    required TResult orElse(),
  }) {
    if (closeWidget != null) {
      return closeWidget(this);
    }
    return orElse();
  }
}

abstract class CloseAllWidgetEvent implements SearchRoutesDialogEvent {
  const factory CloseAllWidgetEvent() = _$CloseAllWidgetEvent;
}

/// @nodoc
class _$SearchRoutesDialogStateTearOff {
  const _$SearchRoutesDialogStateTearOff();

  InitDialogState initDialog() {
    return const InitDialogState();
  }

  ShowAllArrivalPointsState showAllArrivalPoints(
      {required List<List<String>> locationMap}) {
    return ShowAllArrivalPointsState(
      locationMap: locationMap,
    );
  }

  ShowAllDeparturePointsState showAllDeparturePoints(
      {required List<List<String>> locationMap}) {
    return ShowAllDeparturePointsState(
      locationMap: locationMap,
    );
  }

  ShowCalendarForSearchState showCalendar() {
    return const ShowCalendarForSearchState();
  }

  CloseAllWidgetState closeWidget() {
    return const CloseAllWidgetState();
  }
}

/// @nodoc
const $SearchRoutesDialogState = _$SearchRoutesDialogStateTearOff();

/// @nodoc
mixin _$SearchRoutesDialogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initDialog,
    required TResult Function(List<List<String>> locationMap)
        showAllArrivalPoints,
    required TResult Function(List<List<String>> locationMap)
        showAllDeparturePoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitDialogState value) initDialog,
    required TResult Function(ShowAllArrivalPointsState value)
        showAllArrivalPoints,
    required TResult Function(ShowAllDeparturePointsState value)
        showAllDeparturePoints,
    required TResult Function(ShowCalendarForSearchState value) showCalendar,
    required TResult Function(CloseAllWidgetState value) closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRoutesDialogStateCopyWith<$Res> {
  factory $SearchRoutesDialogStateCopyWith(SearchRoutesDialogState value,
          $Res Function(SearchRoutesDialogState) then) =
      _$SearchRoutesDialogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchRoutesDialogStateCopyWithImpl<$Res>
    implements $SearchRoutesDialogStateCopyWith<$Res> {
  _$SearchRoutesDialogStateCopyWithImpl(this._value, this._then);

  final SearchRoutesDialogState _value;
  // ignore: unused_field
  final $Res Function(SearchRoutesDialogState) _then;
}

/// @nodoc
abstract class $InitDialogStateCopyWith<$Res> {
  factory $InitDialogStateCopyWith(
          InitDialogState value, $Res Function(InitDialogState) then) =
      _$InitDialogStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitDialogStateCopyWithImpl<$Res>
    extends _$SearchRoutesDialogStateCopyWithImpl<$Res>
    implements $InitDialogStateCopyWith<$Res> {
  _$InitDialogStateCopyWithImpl(
      InitDialogState _value, $Res Function(InitDialogState) _then)
      : super(_value, (v) => _then(v as InitDialogState));

  @override
  InitDialogState get _value => super._value as InitDialogState;
}

/// @nodoc

class _$InitDialogState implements InitDialogState {
  const _$InitDialogState();

  @override
  String toString() {
    return 'SearchRoutesDialogState.initDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitDialogState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initDialog,
    required TResult Function(List<List<String>> locationMap)
        showAllArrivalPoints,
    required TResult Function(List<List<String>> locationMap)
        showAllDeparturePoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return initDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return initDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) {
    if (initDialog != null) {
      return initDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitDialogState value) initDialog,
    required TResult Function(ShowAllArrivalPointsState value)
        showAllArrivalPoints,
    required TResult Function(ShowAllDeparturePointsState value)
        showAllDeparturePoints,
    required TResult Function(ShowCalendarForSearchState value) showCalendar,
    required TResult Function(CloseAllWidgetState value) closeWidget,
  }) {
    return initDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
  }) {
    return initDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
    required TResult orElse(),
  }) {
    if (initDialog != null) {
      return initDialog(this);
    }
    return orElse();
  }
}

abstract class InitDialogState implements SearchRoutesDialogState {
  const factory InitDialogState() = _$InitDialogState;
}

/// @nodoc
abstract class $ShowAllArrivalPointsStateCopyWith<$Res> {
  factory $ShowAllArrivalPointsStateCopyWith(ShowAllArrivalPointsState value,
          $Res Function(ShowAllArrivalPointsState) then) =
      _$ShowAllArrivalPointsStateCopyWithImpl<$Res>;
  $Res call({List<List<String>> locationMap});
}

/// @nodoc
class _$ShowAllArrivalPointsStateCopyWithImpl<$Res>
    extends _$SearchRoutesDialogStateCopyWithImpl<$Res>
    implements $ShowAllArrivalPointsStateCopyWith<$Res> {
  _$ShowAllArrivalPointsStateCopyWithImpl(ShowAllArrivalPointsState _value,
      $Res Function(ShowAllArrivalPointsState) _then)
      : super(_value, (v) => _then(v as ShowAllArrivalPointsState));

  @override
  ShowAllArrivalPointsState get _value =>
      super._value as ShowAllArrivalPointsState;

  @override
  $Res call({
    Object? locationMap = freezed,
  }) {
    return _then(ShowAllArrivalPointsState(
      locationMap: locationMap == freezed
          ? _value.locationMap
          : locationMap // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$ShowAllArrivalPointsState implements ShowAllArrivalPointsState {
  const _$ShowAllArrivalPointsState({required this.locationMap});

  @override
  final List<List<String>> locationMap;

  @override
  String toString() {
    return 'SearchRoutesDialogState.showAllArrivalPoints(locationMap: $locationMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowAllArrivalPointsState &&
            const DeepCollectionEquality()
                .equals(other.locationMap, locationMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationMap));

  @JsonKey(ignore: true)
  @override
  $ShowAllArrivalPointsStateCopyWith<ShowAllArrivalPointsState> get copyWith =>
      _$ShowAllArrivalPointsStateCopyWithImpl<ShowAllArrivalPointsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initDialog,
    required TResult Function(List<List<String>> locationMap)
        showAllArrivalPoints,
    required TResult Function(List<List<String>> locationMap)
        showAllDeparturePoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return showAllArrivalPoints(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return showAllArrivalPoints?.call(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllArrivalPoints != null) {
      return showAllArrivalPoints(locationMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitDialogState value) initDialog,
    required TResult Function(ShowAllArrivalPointsState value)
        showAllArrivalPoints,
    required TResult Function(ShowAllDeparturePointsState value)
        showAllDeparturePoints,
    required TResult Function(ShowCalendarForSearchState value) showCalendar,
    required TResult Function(CloseAllWidgetState value) closeWidget,
  }) {
    return showAllArrivalPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
  }) {
    return showAllArrivalPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllArrivalPoints != null) {
      return showAllArrivalPoints(this);
    }
    return orElse();
  }
}

abstract class ShowAllArrivalPointsState implements SearchRoutesDialogState {
  const factory ShowAllArrivalPointsState(
      {required List<List<String>> locationMap}) = _$ShowAllArrivalPointsState;

  List<List<String>> get locationMap;
  @JsonKey(ignore: true)
  $ShowAllArrivalPointsStateCopyWith<ShowAllArrivalPointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAllDeparturePointsStateCopyWith<$Res> {
  factory $ShowAllDeparturePointsStateCopyWith(
          ShowAllDeparturePointsState value,
          $Res Function(ShowAllDeparturePointsState) then) =
      _$ShowAllDeparturePointsStateCopyWithImpl<$Res>;
  $Res call({List<List<String>> locationMap});
}

/// @nodoc
class _$ShowAllDeparturePointsStateCopyWithImpl<$Res>
    extends _$SearchRoutesDialogStateCopyWithImpl<$Res>
    implements $ShowAllDeparturePointsStateCopyWith<$Res> {
  _$ShowAllDeparturePointsStateCopyWithImpl(ShowAllDeparturePointsState _value,
      $Res Function(ShowAllDeparturePointsState) _then)
      : super(_value, (v) => _then(v as ShowAllDeparturePointsState));

  @override
  ShowAllDeparturePointsState get _value =>
      super._value as ShowAllDeparturePointsState;

  @override
  $Res call({
    Object? locationMap = freezed,
  }) {
    return _then(ShowAllDeparturePointsState(
      locationMap: locationMap == freezed
          ? _value.locationMap
          : locationMap // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc

class _$ShowAllDeparturePointsState implements ShowAllDeparturePointsState {
  const _$ShowAllDeparturePointsState({required this.locationMap});

  @override
  final List<List<String>> locationMap;

  @override
  String toString() {
    return 'SearchRoutesDialogState.showAllDeparturePoints(locationMap: $locationMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowAllDeparturePointsState &&
            const DeepCollectionEquality()
                .equals(other.locationMap, locationMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationMap));

  @JsonKey(ignore: true)
  @override
  $ShowAllDeparturePointsStateCopyWith<ShowAllDeparturePointsState>
      get copyWith => _$ShowAllDeparturePointsStateCopyWithImpl<
          ShowAllDeparturePointsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initDialog,
    required TResult Function(List<List<String>> locationMap)
        showAllArrivalPoints,
    required TResult Function(List<List<String>> locationMap)
        showAllDeparturePoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return showAllDeparturePoints(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return showAllDeparturePoints?.call(locationMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllDeparturePoints != null) {
      return showAllDeparturePoints(locationMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitDialogState value) initDialog,
    required TResult Function(ShowAllArrivalPointsState value)
        showAllArrivalPoints,
    required TResult Function(ShowAllDeparturePointsState value)
        showAllDeparturePoints,
    required TResult Function(ShowCalendarForSearchState value) showCalendar,
    required TResult Function(CloseAllWidgetState value) closeWidget,
  }) {
    return showAllDeparturePoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
  }) {
    return showAllDeparturePoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
    required TResult orElse(),
  }) {
    if (showAllDeparturePoints != null) {
      return showAllDeparturePoints(this);
    }
    return orElse();
  }
}

abstract class ShowAllDeparturePointsState implements SearchRoutesDialogState {
  const factory ShowAllDeparturePointsState(
          {required List<List<String>> locationMap}) =
      _$ShowAllDeparturePointsState;

  List<List<String>> get locationMap;
  @JsonKey(ignore: true)
  $ShowAllDeparturePointsStateCopyWith<ShowAllDeparturePointsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCalendarForSearchStateCopyWith<$Res> {
  factory $ShowCalendarForSearchStateCopyWith(ShowCalendarForSearchState value,
          $Res Function(ShowCalendarForSearchState) then) =
      _$ShowCalendarForSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowCalendarForSearchStateCopyWithImpl<$Res>
    extends _$SearchRoutesDialogStateCopyWithImpl<$Res>
    implements $ShowCalendarForSearchStateCopyWith<$Res> {
  _$ShowCalendarForSearchStateCopyWithImpl(ShowCalendarForSearchState _value,
      $Res Function(ShowCalendarForSearchState) _then)
      : super(_value, (v) => _then(v as ShowCalendarForSearchState));

  @override
  ShowCalendarForSearchState get _value =>
      super._value as ShowCalendarForSearchState;
}

/// @nodoc

class _$ShowCalendarForSearchState implements ShowCalendarForSearchState {
  const _$ShowCalendarForSearchState();

  @override
  String toString() {
    return 'SearchRoutesDialogState.showCalendar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowCalendarForSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initDialog,
    required TResult Function(List<List<String>> locationMap)
        showAllArrivalPoints,
    required TResult Function(List<List<String>> locationMap)
        showAllDeparturePoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return showCalendar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return showCalendar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
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
    required TResult Function(InitDialogState value) initDialog,
    required TResult Function(ShowAllArrivalPointsState value)
        showAllArrivalPoints,
    required TResult Function(ShowAllDeparturePointsState value)
        showAllDeparturePoints,
    required TResult Function(ShowCalendarForSearchState value) showCalendar,
    required TResult Function(CloseAllWidgetState value) closeWidget,
  }) {
    return showCalendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
  }) {
    return showCalendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
    required TResult orElse(),
  }) {
    if (showCalendar != null) {
      return showCalendar(this);
    }
    return orElse();
  }
}

abstract class ShowCalendarForSearchState implements SearchRoutesDialogState {
  const factory ShowCalendarForSearchState() = _$ShowCalendarForSearchState;
}

/// @nodoc
abstract class $CloseAllWidgetStateCopyWith<$Res> {
  factory $CloseAllWidgetStateCopyWith(
          CloseAllWidgetState value, $Res Function(CloseAllWidgetState) then) =
      _$CloseAllWidgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseAllWidgetStateCopyWithImpl<$Res>
    extends _$SearchRoutesDialogStateCopyWithImpl<$Res>
    implements $CloseAllWidgetStateCopyWith<$Res> {
  _$CloseAllWidgetStateCopyWithImpl(
      CloseAllWidgetState _value, $Res Function(CloseAllWidgetState) _then)
      : super(_value, (v) => _then(v as CloseAllWidgetState));

  @override
  CloseAllWidgetState get _value => super._value as CloseAllWidgetState;
}

/// @nodoc

class _$CloseAllWidgetState implements CloseAllWidgetState {
  const _$CloseAllWidgetState();

  @override
  String toString() {
    return 'SearchRoutesDialogState.closeWidget()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseAllWidgetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initDialog,
    required TResult Function(List<List<String>> locationMap)
        showAllArrivalPoints,
    required TResult Function(List<List<String>> locationMap)
        showAllDeparturePoints,
    required TResult Function() showCalendar,
    required TResult Function() closeWidget,
  }) {
    return closeWidget();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
  }) {
    return closeWidget?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initDialog,
    TResult Function(List<List<String>> locationMap)? showAllArrivalPoints,
    TResult Function(List<List<String>> locationMap)? showAllDeparturePoints,
    TResult Function()? showCalendar,
    TResult Function()? closeWidget,
    required TResult orElse(),
  }) {
    if (closeWidget != null) {
      return closeWidget();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitDialogState value) initDialog,
    required TResult Function(ShowAllArrivalPointsState value)
        showAllArrivalPoints,
    required TResult Function(ShowAllDeparturePointsState value)
        showAllDeparturePoints,
    required TResult Function(ShowCalendarForSearchState value) showCalendar,
    required TResult Function(CloseAllWidgetState value) closeWidget,
  }) {
    return closeWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
  }) {
    return closeWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitDialogState value)? initDialog,
    TResult Function(ShowAllArrivalPointsState value)? showAllArrivalPoints,
    TResult Function(ShowAllDeparturePointsState value)? showAllDeparturePoints,
    TResult Function(ShowCalendarForSearchState value)? showCalendar,
    TResult Function(CloseAllWidgetState value)? closeWidget,
    required TResult orElse(),
  }) {
    if (closeWidget != null) {
      return closeWidget(this);
    }
    return orElse();
  }
}

abstract class CloseAllWidgetState implements SearchRoutesDialogState {
  const factory CloseAllWidgetState() = _$CloseAllWidgetState;
}
