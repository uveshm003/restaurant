// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_stack_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationStackItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemHome value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationStackItemHome value)? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemHome value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStackItemCopyWith<$Res> {
  factory $NavigationStackItemCopyWith(
          NavigationStackItem value, $Res Function(NavigationStackItem) then) =
      _$NavigationStackItemCopyWithImpl<$Res, NavigationStackItem>;
}

/// @nodoc
class _$NavigationStackItemCopyWithImpl<$Res, $Val extends NavigationStackItem>
    implements $NavigationStackItemCopyWith<$Res> {
  _$NavigationStackItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavigationStackItemHomeCopyWith<$Res> {
  factory _$$NavigationStackItemHomeCopyWith(_$NavigationStackItemHome value,
          $Res Function(_$NavigationStackItemHome) then) =
      __$$NavigationStackItemHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationStackItemHomeCopyWithImpl<$Res>
    extends _$NavigationStackItemCopyWithImpl<$Res, _$NavigationStackItemHome>
    implements _$$NavigationStackItemHomeCopyWith<$Res> {
  __$$NavigationStackItemHomeCopyWithImpl(_$NavigationStackItemHome _value,
      $Res Function(_$NavigationStackItemHome) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationStackItemHome implements NavigationStackItemHome {
  const _$NavigationStackItemHome();

  @override
  String toString() {
    return 'NavigationStackItem.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationStackItemHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemHome value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationStackItemHome value)? home,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemHome value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class NavigationStackItemHome implements NavigationStackItem {
  const factory NavigationStackItemHome() = _$NavigationStackItemHome;
}
