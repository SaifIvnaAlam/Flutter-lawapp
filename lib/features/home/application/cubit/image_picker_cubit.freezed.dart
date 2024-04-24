// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImagePickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) picked,
    required TResult Function() notPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? picked,
    TResult? Function()? notPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? picked,
    TResult Function()? notPicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Picked value) picked,
    required TResult Function(_NotPicked value) notPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Picked value)? picked,
    TResult? Function(_NotPicked value)? notPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Picked value)? picked,
    TResult Function(_NotPicked value)? notPicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerStateCopyWith(
          ImagePickerState value, $Res Function(ImagePickerState) then) =
      _$ImagePickerStateCopyWithImpl<$Res, ImagePickerState>;
}

/// @nodoc
class _$ImagePickerStateCopyWithImpl<$Res, $Val extends ImagePickerState>
    implements $ImagePickerStateCopyWith<$Res> {
  _$ImagePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ImagePickerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) picked,
    required TResult Function() notPicked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? picked,
    TResult? Function()? notPicked,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? picked,
    TResult Function()? notPicked,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Picked value) picked,
    required TResult Function(_NotPicked value) notPicked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Picked value)? picked,
    TResult? Function(_NotPicked value)? notPicked,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Picked value)? picked,
    TResult Function(_NotPicked value)? notPicked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImagePickerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PickedImplCopyWith<$Res> {
  factory _$$PickedImplCopyWith(
          _$PickedImpl value, $Res Function(_$PickedImpl) then) =
      __$$PickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$PickedImplCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res, _$PickedImpl>
    implements _$$PickedImplCopyWith<$Res> {
  __$$PickedImplCopyWithImpl(
      _$PickedImpl _value, $Res Function(_$PickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$PickedImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickedImpl implements _Picked {
  const _$PickedImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ImagePickerState.picked(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickedImplCopyWith<_$PickedImpl> get copyWith =>
      __$$PickedImplCopyWithImpl<_$PickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) picked,
    required TResult Function() notPicked,
  }) {
    return picked(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? picked,
    TResult? Function()? notPicked,
  }) {
    return picked?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? picked,
    TResult Function()? notPicked,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Picked value) picked,
    required TResult Function(_NotPicked value) notPicked,
  }) {
    return picked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Picked value)? picked,
    TResult? Function(_NotPicked value)? notPicked,
  }) {
    return picked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Picked value)? picked,
    TResult Function(_NotPicked value)? notPicked,
    required TResult orElse(),
  }) {
    if (picked != null) {
      return picked(this);
    }
    return orElse();
  }
}

abstract class _Picked implements ImagePickerState {
  const factory _Picked(final String imagePath) = _$PickedImpl;

  String get imagePath;
  @JsonKey(ignore: true)
  _$$PickedImplCopyWith<_$PickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotPickedImplCopyWith<$Res> {
  factory _$$NotPickedImplCopyWith(
          _$NotPickedImpl value, $Res Function(_$NotPickedImpl) then) =
      __$$NotPickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotPickedImplCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res, _$NotPickedImpl>
    implements _$$NotPickedImplCopyWith<$Res> {
  __$$NotPickedImplCopyWithImpl(
      _$NotPickedImpl _value, $Res Function(_$NotPickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotPickedImpl implements _NotPicked {
  const _$NotPickedImpl();

  @override
  String toString() {
    return 'ImagePickerState.notPicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotPickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) picked,
    required TResult Function() notPicked,
  }) {
    return notPicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? picked,
    TResult? Function()? notPicked,
  }) {
    return notPicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? picked,
    TResult Function()? notPicked,
    required TResult orElse(),
  }) {
    if (notPicked != null) {
      return notPicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Picked value) picked,
    required TResult Function(_NotPicked value) notPicked,
  }) {
    return notPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Picked value)? picked,
    TResult? Function(_NotPicked value)? notPicked,
  }) {
    return notPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Picked value)? picked,
    TResult Function(_NotPicked value)? notPicked,
    required TResult orElse(),
  }) {
    if (notPicked != null) {
      return notPicked(this);
    }
    return orElse();
  }
}

abstract class _NotPicked implements ImagePickerState {
  const factory _NotPicked() = _$NotPickedImpl;
}
