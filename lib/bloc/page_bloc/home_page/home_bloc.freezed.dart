// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  LoadedUserInformationEvent loadedUserInformation() {
    return const LoadedUserInformationEvent();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedUserInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedUserInformationEvent value)
        loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedUserInformationEvent value)? loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedUserInformationEvent value)? loadedUserInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $LoadedUserInformationEventCopyWith<$Res> {
  factory $LoadedUserInformationEventCopyWith(LoadedUserInformationEvent value,
          $Res Function(LoadedUserInformationEvent) then) =
      _$LoadedUserInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadedUserInformationEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadedUserInformationEventCopyWith<$Res> {
  _$LoadedUserInformationEventCopyWithImpl(LoadedUserInformationEvent _value,
      $Res Function(LoadedUserInformationEvent) _then)
      : super(_value, (v) => _then(v as LoadedUserInformationEvent));

  @override
  LoadedUserInformationEvent get _value =>
      super._value as LoadedUserInformationEvent;
}

/// @nodoc

class _$LoadedUserInformationEvent
    with DiagnosticableTreeMixin
    implements LoadedUserInformationEvent {
  const _$LoadedUserInformationEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.loadedUserInformation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.loadedUserInformation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedUserInformationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadedUserInformation,
  }) {
    return loadedUserInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadedUserInformation,
  }) {
    return loadedUserInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadedUserInformation,
    required TResult orElse(),
  }) {
    if (loadedUserInformation != null) {
      return loadedUserInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedUserInformationEvent value)
        loadedUserInformation,
  }) {
    return loadedUserInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadedUserInformationEvent value)? loadedUserInformation,
  }) {
    return loadedUserInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedUserInformationEvent value)? loadedUserInformation,
    required TResult orElse(),
  }) {
    if (loadedUserInformation != null) {
      return loadedUserInformation(this);
    }
    return orElse();
  }
}

abstract class LoadedUserInformationEvent implements HomeEvent {
  const factory LoadedUserInformationEvent() = _$LoadedUserInformationEvent;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  PageHomeInitState pageInit() {
    return const PageHomeInitState();
  }

  LoadedUserInformationState loadedUserInformation(
      {required String nicknameAndCity,
      required String currentUserPhoneNumber}) {
    return LoadedUserInformationState(
      nicknameAndCity: nicknameAndCity,
      currentUserPhoneNumber: currentUserPhoneNumber,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(
            String nicknameAndCity, String currentUserPhoneNumber)
        loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nicknameAndCity, String currentUserPhoneNumber)?
        loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nicknameAndCity, String currentUserPhoneNumber)?
        loadedUserInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageHomeInitState value) pageInit,
    required TResult Function(LoadedUserInformationState value)
        loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageHomeInitState value)? pageInit,
    TResult Function(LoadedUserInformationState value)? loadedUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageHomeInitState value)? pageInit,
    TResult Function(LoadedUserInformationState value)? loadedUserInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $PageHomeInitStateCopyWith<$Res> {
  factory $PageHomeInitStateCopyWith(
          PageHomeInitState value, $Res Function(PageHomeInitState) then) =
      _$PageHomeInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageHomeInitStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $PageHomeInitStateCopyWith<$Res> {
  _$PageHomeInitStateCopyWithImpl(
      PageHomeInitState _value, $Res Function(PageHomeInitState) _then)
      : super(_value, (v) => _then(v as PageHomeInitState));

  @override
  PageHomeInitState get _value => super._value as PageHomeInitState;
}

/// @nodoc

class _$PageHomeInitState
    with DiagnosticableTreeMixin
    implements PageHomeInitState {
  const _$PageHomeInitState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.pageInit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.pageInit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageHomeInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(
            String nicknameAndCity, String currentUserPhoneNumber)
        loadedUserInformation,
  }) {
    return pageInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nicknameAndCity, String currentUserPhoneNumber)?
        loadedUserInformation,
  }) {
    return pageInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nicknameAndCity, String currentUserPhoneNumber)?
        loadedUserInformation,
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
    required TResult Function(PageHomeInitState value) pageInit,
    required TResult Function(LoadedUserInformationState value)
        loadedUserInformation,
  }) {
    return pageInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageHomeInitState value)? pageInit,
    TResult Function(LoadedUserInformationState value)? loadedUserInformation,
  }) {
    return pageInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageHomeInitState value)? pageInit,
    TResult Function(LoadedUserInformationState value)? loadedUserInformation,
    required TResult orElse(),
  }) {
    if (pageInit != null) {
      return pageInit(this);
    }
    return orElse();
  }
}

abstract class PageHomeInitState implements HomeState {
  const factory PageHomeInitState() = _$PageHomeInitState;
}

/// @nodoc
abstract class $LoadedUserInformationStateCopyWith<$Res> {
  factory $LoadedUserInformationStateCopyWith(LoadedUserInformationState value,
          $Res Function(LoadedUserInformationState) then) =
      _$LoadedUserInformationStateCopyWithImpl<$Res>;
  $Res call({String nicknameAndCity, String currentUserPhoneNumber});
}

/// @nodoc
class _$LoadedUserInformationStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadedUserInformationStateCopyWith<$Res> {
  _$LoadedUserInformationStateCopyWithImpl(LoadedUserInformationState _value,
      $Res Function(LoadedUserInformationState) _then)
      : super(_value, (v) => _then(v as LoadedUserInformationState));

  @override
  LoadedUserInformationState get _value =>
      super._value as LoadedUserInformationState;

  @override
  $Res call({
    Object? nicknameAndCity = freezed,
    Object? currentUserPhoneNumber = freezed,
  }) {
    return _then(LoadedUserInformationState(
      nicknameAndCity: nicknameAndCity == freezed
          ? _value.nicknameAndCity
          : nicknameAndCity // ignore: cast_nullable_to_non_nullable
              as String,
      currentUserPhoneNumber: currentUserPhoneNumber == freezed
          ? _value.currentUserPhoneNumber
          : currentUserPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedUserInformationState
    with DiagnosticableTreeMixin
    implements LoadedUserInformationState {
  const _$LoadedUserInformationState(
      {required this.nicknameAndCity, required this.currentUserPhoneNumber});

  @override
  final String nicknameAndCity;
  @override
  final String currentUserPhoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loadedUserInformation(nicknameAndCity: $nicknameAndCity, currentUserPhoneNumber: $currentUserPhoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.loadedUserInformation'))
      ..add(DiagnosticsProperty('nicknameAndCity', nicknameAndCity))
      ..add(DiagnosticsProperty(
          'currentUserPhoneNumber', currentUserPhoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedUserInformationState &&
            const DeepCollectionEquality()
                .equals(other.nicknameAndCity, nicknameAndCity) &&
            const DeepCollectionEquality()
                .equals(other.currentUserPhoneNumber, currentUserPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nicknameAndCity),
      const DeepCollectionEquality().hash(currentUserPhoneNumber));

  @JsonKey(ignore: true)
  @override
  $LoadedUserInformationStateCopyWith<LoadedUserInformationState>
      get copyWith =>
          _$LoadedUserInformationStateCopyWithImpl<LoadedUserInformationState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(
            String nicknameAndCity, String currentUserPhoneNumber)
        loadedUserInformation,
  }) {
    return loadedUserInformation(nicknameAndCity, currentUserPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nicknameAndCity, String currentUserPhoneNumber)?
        loadedUserInformation,
  }) {
    return loadedUserInformation?.call(nicknameAndCity, currentUserPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nicknameAndCity, String currentUserPhoneNumber)?
        loadedUserInformation,
    required TResult orElse(),
  }) {
    if (loadedUserInformation != null) {
      return loadedUserInformation(nicknameAndCity, currentUserPhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageHomeInitState value) pageInit,
    required TResult Function(LoadedUserInformationState value)
        loadedUserInformation,
  }) {
    return loadedUserInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageHomeInitState value)? pageInit,
    TResult Function(LoadedUserInformationState value)? loadedUserInformation,
  }) {
    return loadedUserInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageHomeInitState value)? pageInit,
    TResult Function(LoadedUserInformationState value)? loadedUserInformation,
    required TResult orElse(),
  }) {
    if (loadedUserInformation != null) {
      return loadedUserInformation(this);
    }
    return orElse();
  }
}

abstract class LoadedUserInformationState implements HomeState {
  const factory LoadedUserInformationState(
      {required String nicknameAndCity,
      required String currentUserPhoneNumber}) = _$LoadedUserInformationState;

  String get nicknameAndCity;
  String get currentUserPhoneNumber;
  @JsonKey(ignore: true)
  $LoadedUserInformationStateCopyWith<LoadedUserInformationState>
      get copyWith => throw _privateConstructorUsedError;
}
