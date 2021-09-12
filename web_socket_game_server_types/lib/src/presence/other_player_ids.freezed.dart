// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'other_player_ids.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtherPlayerIds _$OtherPlayerIdsFromJson(Map<String, dynamic> json) {
  return _OtherPlayerIds.fromJson(json);
}

/// @nodoc
class _$OtherPlayerIdsTearOff {
  const _$OtherPlayerIdsTearOff();

  _OtherPlayerIds call(
      {String type = 'other_player_ids', required ISet<String> ids}) {
    return _OtherPlayerIds(
      type: type,
      ids: ids,
    );
  }

  OtherPlayerIds fromJson(Map<String, Object> json) {
    return OtherPlayerIds.fromJson(json);
  }
}

/// @nodoc
const $OtherPlayerIds = _$OtherPlayerIdsTearOff();

/// @nodoc
mixin _$OtherPlayerIds {
  String get type => throw _privateConstructorUsedError;
  ISet<String> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherPlayerIdsCopyWith<OtherPlayerIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherPlayerIdsCopyWith<$Res> {
  factory $OtherPlayerIdsCopyWith(
          OtherPlayerIds value, $Res Function(OtherPlayerIds) then) =
      _$OtherPlayerIdsCopyWithImpl<$Res>;
  $Res call({String type, ISet<String> ids});
}

/// @nodoc
class _$OtherPlayerIdsCopyWithImpl<$Res>
    implements $OtherPlayerIdsCopyWith<$Res> {
  _$OtherPlayerIdsCopyWithImpl(this._value, this._then);

  final OtherPlayerIds _value;
  // ignore: unused_field
  final $Res Function(OtherPlayerIds) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? ids = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as ISet<String>,
    ));
  }
}

/// @nodoc
abstract class _$OtherPlayerIdsCopyWith<$Res>
    implements $OtherPlayerIdsCopyWith<$Res> {
  factory _$OtherPlayerIdsCopyWith(
          _OtherPlayerIds value, $Res Function(_OtherPlayerIds) then) =
      __$OtherPlayerIdsCopyWithImpl<$Res>;
  @override
  $Res call({String type, ISet<String> ids});
}

/// @nodoc
class __$OtherPlayerIdsCopyWithImpl<$Res>
    extends _$OtherPlayerIdsCopyWithImpl<$Res>
    implements _$OtherPlayerIdsCopyWith<$Res> {
  __$OtherPlayerIdsCopyWithImpl(
      _OtherPlayerIds _value, $Res Function(_OtherPlayerIds) _then)
      : super(_value, (v) => _then(v as _OtherPlayerIds));

  @override
  _OtherPlayerIds get _value => super._value as _OtherPlayerIds;

  @override
  $Res call({
    Object? type = freezed,
    Object? ids = freezed,
  }) {
    return _then(_OtherPlayerIds(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as ISet<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherPlayerIds implements _OtherPlayerIds {
  _$_OtherPlayerIds({this.type = 'other_player_ids', required this.ids});

  factory _$_OtherPlayerIds.fromJson(Map<String, dynamic> json) =>
      _$$_OtherPlayerIdsFromJson(json);

  @JsonKey(defaultValue: 'other_player_ids')
  @override
  final String type;
  @override
  final ISet<String> ids;

  @override
  String toString() {
    return 'OtherPlayerIds(type: $type, ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtherPlayerIds &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(ids);

  @JsonKey(ignore: true)
  @override
  _$OtherPlayerIdsCopyWith<_OtherPlayerIds> get copyWith =>
      __$OtherPlayerIdsCopyWithImpl<_OtherPlayerIds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherPlayerIdsToJson(this);
  }
}

abstract class _OtherPlayerIds implements OtherPlayerIds {
  factory _OtherPlayerIds({String type, required ISet<String> ids}) =
      _$_OtherPlayerIds;

  factory _OtherPlayerIds.fromJson(Map<String, dynamic> json) =
      _$_OtherPlayerIds.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  ISet<String> get ids => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OtherPlayerIdsCopyWith<_OtherPlayerIds> get copyWith =>
      throw _privateConstructorUsedError;
}
