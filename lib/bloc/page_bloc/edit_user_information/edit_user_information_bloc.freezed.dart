// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_user_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditUserInformationEventTearOff {
  const _$EditUserInformationEventTearOff();

  UploadNicknameAndCityEvent uploadNicknameAndCity() {
    return const UploadNicknameAndCityEvent();
  }

  SaveUserInformationEvent saveUserInformation(
      {required String nickname,
      required String city,
      required String pickImageUrl,
      required BuildContext context}) {
    return SaveUserInformationEvent(
      nickname: nickname,
      city: city,
      pickImageUrl: pickImageUrl,
      context: context,
    );
  }
}

/// @nodoc
const $EditUserInformationEvent = _$EditUserInformationEventTearOff();

/// @nodoc
mixin _$EditUserInformationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadNicknameAndCity,
    required TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)
        saveUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uploadNicknameAndCity,
    TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)?
        saveUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadNicknameAndCity,
    TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)?
        saveUserInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadNicknameAndCityEvent value)
        uploadNicknameAndCity,
    required TResult Function(SaveUserInformationEvent value)
        saveUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadNicknameAndCityEvent value)? uploadNicknameAndCity,
    TResult Function(SaveUserInformationEvent value)? saveUserInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadNicknameAndCityEvent value)? uploadNicknameAndCity,
    TResult Function(SaveUserInformationEvent value)? saveUserInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserInformationEventCopyWith<$Res> {
  factory $EditUserInformationEventCopyWith(EditUserInformationEvent value,
          $Res Function(EditUserInformationEvent) then) =
      _$EditUserInformationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditUserInformationEventCopyWithImpl<$Res>
    implements $EditUserInformationEventCopyWith<$Res> {
  _$EditUserInformationEventCopyWithImpl(this._value, this._then);

  final EditUserInformationEvent _value;
  // ignore: unused_field
  final $Res Function(EditUserInformationEvent) _then;
}

/// @nodoc
abstract class $UploadNicknameAndCityEventCopyWith<$Res> {
  factory $UploadNicknameAndCityEventCopyWith(UploadNicknameAndCityEvent value,
          $Res Function(UploadNicknameAndCityEvent) then) =
      _$UploadNicknameAndCityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadNicknameAndCityEventCopyWithImpl<$Res>
    extends _$EditUserInformationEventCopyWithImpl<$Res>
    implements $UploadNicknameAndCityEventCopyWith<$Res> {
  _$UploadNicknameAndCityEventCopyWithImpl(UploadNicknameAndCityEvent _value,
      $Res Function(UploadNicknameAndCityEvent) _then)
      : super(_value, (v) => _then(v as UploadNicknameAndCityEvent));

  @override
  UploadNicknameAndCityEvent get _value =>
      super._value as UploadNicknameAndCityEvent;
}

/// @nodoc

class _$UploadNicknameAndCityEvent implements UploadNicknameAndCityEvent {
  const _$UploadNicknameAndCityEvent();

  @override
  String toString() {
    return 'EditUserInformationEvent.uploadNicknameAndCity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadNicknameAndCityEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadNicknameAndCity,
    required TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)
        saveUserInformation,
  }) {
    return uploadNicknameAndCity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uploadNicknameAndCity,
    TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)?
        saveUserInformation,
  }) {
    return uploadNicknameAndCity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadNicknameAndCity,
    TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)?
        saveUserInformation,
    required TResult orElse(),
  }) {
    if (uploadNicknameAndCity != null) {
      return uploadNicknameAndCity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadNicknameAndCityEvent value)
        uploadNicknameAndCity,
    required TResult Function(SaveUserInformationEvent value)
        saveUserInformation,
  }) {
    return uploadNicknameAndCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadNicknameAndCityEvent value)? uploadNicknameAndCity,
    TResult Function(SaveUserInformationEvent value)? saveUserInformation,
  }) {
    return uploadNicknameAndCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadNicknameAndCityEvent value)? uploadNicknameAndCity,
    TResult Function(SaveUserInformationEvent value)? saveUserInformation,
    required TResult orElse(),
  }) {
    if (uploadNicknameAndCity != null) {
      return uploadNicknameAndCity(this);
    }
    return orElse();
  }
}

abstract class UploadNicknameAndCityEvent implements EditUserInformationEvent {
  const factory UploadNicknameAndCityEvent() = _$UploadNicknameAndCityEvent;
}

/// @nodoc
abstract class $SaveUserInformationEventCopyWith<$Res> {
  factory $SaveUserInformationEventCopyWith(SaveUserInformationEvent value,
          $Res Function(SaveUserInformationEvent) then) =
      _$SaveUserInformationEventCopyWithImpl<$Res>;
  $Res call(
      {String nickname,
      String city,
      String pickImageUrl,
      BuildContext context});
}

/// @nodoc
class _$SaveUserInformationEventCopyWithImpl<$Res>
    extends _$EditUserInformationEventCopyWithImpl<$Res>
    implements $SaveUserInformationEventCopyWith<$Res> {
  _$SaveUserInformationEventCopyWithImpl(SaveUserInformationEvent _value,
      $Res Function(SaveUserInformationEvent) _then)
      : super(_value, (v) => _then(v as SaveUserInformationEvent));

  @override
  SaveUserInformationEvent get _value =>
      super._value as SaveUserInformationEvent;

  @override
  $Res call({
    Object? nickname = freezed,
    Object? city = freezed,
    Object? pickImageUrl = freezed,
    Object? context = freezed,
  }) {
    return _then(SaveUserInformationEvent(
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      pickImageUrl: pickImageUrl == freezed
          ? _value.pickImageUrl
          : pickImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SaveUserInformationEvent implements SaveUserInformationEvent {
  const _$SaveUserInformationEvent(
      {required this.nickname,
      required this.city,
      required this.pickImageUrl,
      required this.context});

  @override
  final String nickname;
  @override
  final String city;
  @override
  final String pickImageUrl;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'EditUserInformationEvent.saveUserInformation(nickname: $nickname, city: $city, pickImageUrl: $pickImageUrl, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveUserInformationEvent &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.pickImageUrl, pickImageUrl) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(pickImageUrl),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $SaveUserInformationEventCopyWith<SaveUserInformationEvent> get copyWith =>
      _$SaveUserInformationEventCopyWithImpl<SaveUserInformationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadNicknameAndCity,
    required TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)
        saveUserInformation,
  }) {
    return saveUserInformation(nickname, city, pickImageUrl, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uploadNicknameAndCity,
    TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)?
        saveUserInformation,
  }) {
    return saveUserInformation?.call(nickname, city, pickImageUrl, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadNicknameAndCity,
    TResult Function(String nickname, String city, String pickImageUrl,
            BuildContext context)?
        saveUserInformation,
    required TResult orElse(),
  }) {
    if (saveUserInformation != null) {
      return saveUserInformation(nickname, city, pickImageUrl, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadNicknameAndCityEvent value)
        uploadNicknameAndCity,
    required TResult Function(SaveUserInformationEvent value)
        saveUserInformation,
  }) {
    return saveUserInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadNicknameAndCityEvent value)? uploadNicknameAndCity,
    TResult Function(SaveUserInformationEvent value)? saveUserInformation,
  }) {
    return saveUserInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadNicknameAndCityEvent value)? uploadNicknameAndCity,
    TResult Function(SaveUserInformationEvent value)? saveUserInformation,
    required TResult orElse(),
  }) {
    if (saveUserInformation != null) {
      return saveUserInformation(this);
    }
    return orElse();
  }
}

abstract class SaveUserInformationEvent implements EditUserInformationEvent {
  const factory SaveUserInformationEvent(
      {required String nickname,
      required String city,
      required String pickImageUrl,
      required BuildContext context}) = _$SaveUserInformationEvent;

  String get nickname;
  String get city;
  String get pickImageUrl;
  BuildContext get context;
  @JsonKey(ignore: true)
  $SaveUserInformationEventCopyWith<SaveUserInformationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditUserInformationStateTearOff {
  const _$EditUserInformationStateTearOff();

  PageInitState pageInit() {
    return const PageInitState();
  }

  UploadNicknameAndCityState uploadNicknameAndCity(
      {required String nickname, required String city}) {
    return UploadNicknameAndCityState(
      nickname: nickname,
      city: city,
    );
  }
}

/// @nodoc
const $EditUserInformationState = _$EditUserInformationStateTearOff();

/// @nodoc
mixin _$EditUserInformationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(String nickname, String city)
        uploadNicknameAndCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nickname, String city)? uploadNicknameAndCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nickname, String city)? uploadNicknameAndCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageInitState value) pageInit,
    required TResult Function(UploadNicknameAndCityState value)
        uploadNicknameAndCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageInitState value)? pageInit,
    TResult Function(UploadNicknameAndCityState value)? uploadNicknameAndCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageInitState value)? pageInit,
    TResult Function(UploadNicknameAndCityState value)? uploadNicknameAndCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserInformationStateCopyWith<$Res> {
  factory $EditUserInformationStateCopyWith(EditUserInformationState value,
          $Res Function(EditUserInformationState) then) =
      _$EditUserInformationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditUserInformationStateCopyWithImpl<$Res>
    implements $EditUserInformationStateCopyWith<$Res> {
  _$EditUserInformationStateCopyWithImpl(this._value, this._then);

  final EditUserInformationState _value;
  // ignore: unused_field
  final $Res Function(EditUserInformationState) _then;
}

/// @nodoc
abstract class $PageInitStateCopyWith<$Res> {
  factory $PageInitStateCopyWith(
          PageInitState value, $Res Function(PageInitState) then) =
      _$PageInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageInitStateCopyWithImpl<$Res>
    extends _$EditUserInformationStateCopyWithImpl<$Res>
    implements $PageInitStateCopyWith<$Res> {
  _$PageInitStateCopyWithImpl(
      PageInitState _value, $Res Function(PageInitState) _then)
      : super(_value, (v) => _then(v as PageInitState));

  @override
  PageInitState get _value => super._value as PageInitState;
}

/// @nodoc

class _$PageInitState implements PageInitState {
  const _$PageInitState();

  @override
  String toString() {
    return 'EditUserInformationState.pageInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(String nickname, String city)
        uploadNicknameAndCity,
  }) {
    return pageInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nickname, String city)? uploadNicknameAndCity,
  }) {
    return pageInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nickname, String city)? uploadNicknameAndCity,
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
    required TResult Function(PageInitState value) pageInit,
    required TResult Function(UploadNicknameAndCityState value)
        uploadNicknameAndCity,
  }) {
    return pageInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageInitState value)? pageInit,
    TResult Function(UploadNicknameAndCityState value)? uploadNicknameAndCity,
  }) {
    return pageInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageInitState value)? pageInit,
    TResult Function(UploadNicknameAndCityState value)? uploadNicknameAndCity,
    required TResult orElse(),
  }) {
    if (pageInit != null) {
      return pageInit(this);
    }
    return orElse();
  }
}

abstract class PageInitState implements EditUserInformationState {
  const factory PageInitState() = _$PageInitState;
}

/// @nodoc
abstract class $UploadNicknameAndCityStateCopyWith<$Res> {
  factory $UploadNicknameAndCityStateCopyWith(UploadNicknameAndCityState value,
          $Res Function(UploadNicknameAndCityState) then) =
      _$UploadNicknameAndCityStateCopyWithImpl<$Res>;
  $Res call({String nickname, String city});
}

/// @nodoc
class _$UploadNicknameAndCityStateCopyWithImpl<$Res>
    extends _$EditUserInformationStateCopyWithImpl<$Res>
    implements $UploadNicknameAndCityStateCopyWith<$Res> {
  _$UploadNicknameAndCityStateCopyWithImpl(UploadNicknameAndCityState _value,
      $Res Function(UploadNicknameAndCityState) _then)
      : super(_value, (v) => _then(v as UploadNicknameAndCityState));

  @override
  UploadNicknameAndCityState get _value =>
      super._value as UploadNicknameAndCityState;

  @override
  $Res call({
    Object? nickname = freezed,
    Object? city = freezed,
  }) {
    return _then(UploadNicknameAndCityState(
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadNicknameAndCityState implements UploadNicknameAndCityState {
  const _$UploadNicknameAndCityState(
      {required this.nickname, required this.city});

  @override
  final String nickname;
  @override
  final String city;

  @override
  String toString() {
    return 'EditUserInformationState.uploadNicknameAndCity(nickname: $nickname, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadNicknameAndCityState &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  $UploadNicknameAndCityStateCopyWith<UploadNicknameAndCityState>
      get copyWith =>
          _$UploadNicknameAndCityStateCopyWithImpl<UploadNicknameAndCityState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageInit,
    required TResult Function(String nickname, String city)
        uploadNicknameAndCity,
  }) {
    return uploadNicknameAndCity(nickname, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nickname, String city)? uploadNicknameAndCity,
  }) {
    return uploadNicknameAndCity?.call(nickname, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageInit,
    TResult Function(String nickname, String city)? uploadNicknameAndCity,
    required TResult orElse(),
  }) {
    if (uploadNicknameAndCity != null) {
      return uploadNicknameAndCity(nickname, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageInitState value) pageInit,
    required TResult Function(UploadNicknameAndCityState value)
        uploadNicknameAndCity,
  }) {
    return uploadNicknameAndCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageInitState value)? pageInit,
    TResult Function(UploadNicknameAndCityState value)? uploadNicknameAndCity,
  }) {
    return uploadNicknameAndCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageInitState value)? pageInit,
    TResult Function(UploadNicknameAndCityState value)? uploadNicknameAndCity,
    required TResult orElse(),
  }) {
    if (uploadNicknameAndCity != null) {
      return uploadNicknameAndCity(this);
    }
    return orElse();
  }
}

abstract class UploadNicknameAndCityState implements EditUserInformationState {
  const factory UploadNicknameAndCityState(
      {required String nickname,
      required String city}) = _$UploadNicknameAndCityState;

  String get nickname;
  String get city;
  @JsonKey(ignore: true)
  $UploadNicknameAndCityStateCopyWith<UploadNicknameAndCityState>
      get copyWith => throw _privateConstructorUsedError;
}
