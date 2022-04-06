// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editable_rectangular_avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditableRectangularAvatarEventTearOff {
  const _$EditableRectangularAvatarEventTearOff();

  UploadAvatarEvent uploadAvatar() {
    return const UploadAvatarEvent();
  }

  SetAvatarEvent setAvatar({required String url}) {
    return SetAvatarEvent(
      url: url,
    );
  }
}

/// @nodoc
const $EditableRectangularAvatarEvent =
    _$EditableRectangularAvatarEventTearOff();

/// @nodoc
mixin _$EditableRectangularAvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadAvatar,
    required TResult Function(String url) setAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uploadAvatar,
    TResult Function(String url)? setAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadAvatar,
    TResult Function(String url)? setAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(SetAvatarEvent value) setAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(SetAvatarEvent value)? setAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(SetAvatarEvent value)? setAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditableRectangularAvatarEventCopyWith<$Res> {
  factory $EditableRectangularAvatarEventCopyWith(
          EditableRectangularAvatarEvent value,
          $Res Function(EditableRectangularAvatarEvent) then) =
      _$EditableRectangularAvatarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditableRectangularAvatarEventCopyWithImpl<$Res>
    implements $EditableRectangularAvatarEventCopyWith<$Res> {
  _$EditableRectangularAvatarEventCopyWithImpl(this._value, this._then);

  final EditableRectangularAvatarEvent _value;
  // ignore: unused_field
  final $Res Function(EditableRectangularAvatarEvent) _then;
}

/// @nodoc
abstract class $UploadAvatarEventCopyWith<$Res> {
  factory $UploadAvatarEventCopyWith(
          UploadAvatarEvent value, $Res Function(UploadAvatarEvent) then) =
      _$UploadAvatarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadAvatarEventCopyWithImpl<$Res>
    extends _$EditableRectangularAvatarEventCopyWithImpl<$Res>
    implements $UploadAvatarEventCopyWith<$Res> {
  _$UploadAvatarEventCopyWithImpl(
      UploadAvatarEvent _value, $Res Function(UploadAvatarEvent) _then)
      : super(_value, (v) => _then(v as UploadAvatarEvent));

  @override
  UploadAvatarEvent get _value => super._value as UploadAvatarEvent;
}

/// @nodoc

class _$UploadAvatarEvent implements UploadAvatarEvent {
  const _$UploadAvatarEvent();

  @override
  String toString() {
    return 'EditableRectangularAvatarEvent.uploadAvatar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadAvatarEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadAvatar,
    required TResult Function(String url) setAvatar,
  }) {
    return uploadAvatar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uploadAvatar,
    TResult Function(String url)? setAvatar,
  }) {
    return uploadAvatar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadAvatar,
    TResult Function(String url)? setAvatar,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(SetAvatarEvent value) setAvatar,
  }) {
    return uploadAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(SetAvatarEvent value)? setAvatar,
  }) {
    return uploadAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(SetAvatarEvent value)? setAvatar,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(this);
    }
    return orElse();
  }
}

abstract class UploadAvatarEvent implements EditableRectangularAvatarEvent {
  const factory UploadAvatarEvent() = _$UploadAvatarEvent;
}

/// @nodoc
abstract class $SetAvatarEventCopyWith<$Res> {
  factory $SetAvatarEventCopyWith(
          SetAvatarEvent value, $Res Function(SetAvatarEvent) then) =
      _$SetAvatarEventCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$SetAvatarEventCopyWithImpl<$Res>
    extends _$EditableRectangularAvatarEventCopyWithImpl<$Res>
    implements $SetAvatarEventCopyWith<$Res> {
  _$SetAvatarEventCopyWithImpl(
      SetAvatarEvent _value, $Res Function(SetAvatarEvent) _then)
      : super(_value, (v) => _then(v as SetAvatarEvent));

  @override
  SetAvatarEvent get _value => super._value as SetAvatarEvent;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(SetAvatarEvent(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetAvatarEvent implements SetAvatarEvent {
  const _$SetAvatarEvent({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'EditableRectangularAvatarEvent.setAvatar(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetAvatarEvent &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $SetAvatarEventCopyWith<SetAvatarEvent> get copyWith =>
      _$SetAvatarEventCopyWithImpl<SetAvatarEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uploadAvatar,
    required TResult Function(String url) setAvatar,
  }) {
    return setAvatar(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uploadAvatar,
    TResult Function(String url)? setAvatar,
  }) {
    return setAvatar?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uploadAvatar,
    TResult Function(String url)? setAvatar,
    required TResult orElse(),
  }) {
    if (setAvatar != null) {
      return setAvatar(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadAvatarEvent value) uploadAvatar,
    required TResult Function(SetAvatarEvent value) setAvatar,
  }) {
    return setAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(SetAvatarEvent value)? setAvatar,
  }) {
    return setAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadAvatarEvent value)? uploadAvatar,
    TResult Function(SetAvatarEvent value)? setAvatar,
    required TResult orElse(),
  }) {
    if (setAvatar != null) {
      return setAvatar(this);
    }
    return orElse();
  }
}

abstract class SetAvatarEvent implements EditableRectangularAvatarEvent {
  const factory SetAvatarEvent({required String url}) = _$SetAvatarEvent;

  String get url;
  @JsonKey(ignore: true)
  $SetAvatarEventCopyWith<SetAvatarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditableRectangularAvatarStateTearOff {
  const _$EditableRectangularAvatarStateTearOff();

  WidgetInitState widgetInit() {
    return const WidgetInitState();
  }

  UploadAvatarState uploadAvatar({required String url}) {
    return UploadAvatarState(
      url: url,
    );
  }

  PickImageState pickImage({required String url}) {
    return PickImageState(
      url: url,
    );
  }
}

/// @nodoc
const $EditableRectangularAvatarState =
    _$EditableRectangularAvatarStateTearOff();

/// @nodoc
mixin _$EditableRectangularAvatarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() widgetInit,
    required TResult Function(String url) uploadAvatar,
    required TResult Function(String url) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetInitState value) widgetInit,
    required TResult Function(UploadAvatarState value) uploadAvatar,
    required TResult Function(PickImageState value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditableRectangularAvatarStateCopyWith<$Res> {
  factory $EditableRectangularAvatarStateCopyWith(
          EditableRectangularAvatarState value,
          $Res Function(EditableRectangularAvatarState) then) =
      _$EditableRectangularAvatarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditableRectangularAvatarStateCopyWithImpl<$Res>
    implements $EditableRectangularAvatarStateCopyWith<$Res> {
  _$EditableRectangularAvatarStateCopyWithImpl(this._value, this._then);

  final EditableRectangularAvatarState _value;
  // ignore: unused_field
  final $Res Function(EditableRectangularAvatarState) _then;
}

/// @nodoc
abstract class $WidgetInitStateCopyWith<$Res> {
  factory $WidgetInitStateCopyWith(
          WidgetInitState value, $Res Function(WidgetInitState) then) =
      _$WidgetInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WidgetInitStateCopyWithImpl<$Res>
    extends _$EditableRectangularAvatarStateCopyWithImpl<$Res>
    implements $WidgetInitStateCopyWith<$Res> {
  _$WidgetInitStateCopyWithImpl(
      WidgetInitState _value, $Res Function(WidgetInitState) _then)
      : super(_value, (v) => _then(v as WidgetInitState));

  @override
  WidgetInitState get _value => super._value as WidgetInitState;
}

/// @nodoc

class _$WidgetInitState implements WidgetInitState {
  const _$WidgetInitState();

  @override
  String toString() {
    return 'EditableRectangularAvatarState.widgetInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WidgetInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() widgetInit,
    required TResult Function(String url) uploadAvatar,
    required TResult Function(String url) pickImage,
  }) {
    return widgetInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
  }) {
    return widgetInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
    required TResult orElse(),
  }) {
    if (widgetInit != null) {
      return widgetInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetInitState value) widgetInit,
    required TResult Function(UploadAvatarState value) uploadAvatar,
    required TResult Function(PickImageState value) pickImage,
  }) {
    return widgetInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
  }) {
    return widgetInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (widgetInit != null) {
      return widgetInit(this);
    }
    return orElse();
  }
}

abstract class WidgetInitState implements EditableRectangularAvatarState {
  const factory WidgetInitState() = _$WidgetInitState;
}

/// @nodoc
abstract class $UploadAvatarStateCopyWith<$Res> {
  factory $UploadAvatarStateCopyWith(
          UploadAvatarState value, $Res Function(UploadAvatarState) then) =
      _$UploadAvatarStateCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$UploadAvatarStateCopyWithImpl<$Res>
    extends _$EditableRectangularAvatarStateCopyWithImpl<$Res>
    implements $UploadAvatarStateCopyWith<$Res> {
  _$UploadAvatarStateCopyWithImpl(
      UploadAvatarState _value, $Res Function(UploadAvatarState) _then)
      : super(_value, (v) => _then(v as UploadAvatarState));

  @override
  UploadAvatarState get _value => super._value as UploadAvatarState;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(UploadAvatarState(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadAvatarState implements UploadAvatarState {
  const _$UploadAvatarState({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'EditableRectangularAvatarState.uploadAvatar(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadAvatarState &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $UploadAvatarStateCopyWith<UploadAvatarState> get copyWith =>
      _$UploadAvatarStateCopyWithImpl<UploadAvatarState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() widgetInit,
    required TResult Function(String url) uploadAvatar,
    required TResult Function(String url) pickImage,
  }) {
    return uploadAvatar(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
  }) {
    return uploadAvatar?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetInitState value) widgetInit,
    required TResult Function(UploadAvatarState value) uploadAvatar,
    required TResult Function(PickImageState value) pickImage,
  }) {
    return uploadAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
  }) {
    return uploadAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (uploadAvatar != null) {
      return uploadAvatar(this);
    }
    return orElse();
  }
}

abstract class UploadAvatarState implements EditableRectangularAvatarState {
  const factory UploadAvatarState({required String url}) = _$UploadAvatarState;

  String get url;
  @JsonKey(ignore: true)
  $UploadAvatarStateCopyWith<UploadAvatarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickImageStateCopyWith<$Res> {
  factory $PickImageStateCopyWith(
          PickImageState value, $Res Function(PickImageState) then) =
      _$PickImageStateCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$PickImageStateCopyWithImpl<$Res>
    extends _$EditableRectangularAvatarStateCopyWithImpl<$Res>
    implements $PickImageStateCopyWith<$Res> {
  _$PickImageStateCopyWithImpl(
      PickImageState _value, $Res Function(PickImageState) _then)
      : super(_value, (v) => _then(v as PickImageState));

  @override
  PickImageState get _value => super._value as PickImageState;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(PickImageState(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickImageState implements PickImageState {
  const _$PickImageState({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'EditableRectangularAvatarState.pickImage(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickImageState &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $PickImageStateCopyWith<PickImageState> get copyWith =>
      _$PickImageStateCopyWithImpl<PickImageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() widgetInit,
    required TResult Function(String url) uploadAvatar,
    required TResult Function(String url) pickImage,
  }) {
    return pickImage(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
  }) {
    return pickImage?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? widgetInit,
    TResult Function(String url)? uploadAvatar,
    TResult Function(String url)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetInitState value) widgetInit,
    required TResult Function(UploadAvatarState value) uploadAvatar,
    required TResult Function(PickImageState value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetInitState value)? widgetInit,
    TResult Function(UploadAvatarState value)? uploadAvatar,
    TResult Function(PickImageState value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImageState implements EditableRectangularAvatarState {
  const factory PickImageState({required String url}) = _$PickImageState;

  String get url;
  @JsonKey(ignore: true)
  $PickImageStateCopyWith<PickImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
