// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) {
  return _CategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call({String id, String name, String code, String image, int itemCount});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? image = null,
    Object? itemCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryEntityCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$_CategoryEntityCopyWith(
          _$_CategoryEntity value, $Res Function(_$_CategoryEntity) then) =
      __$$_CategoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String code, String image, int itemCount});
}

/// @nodoc
class __$$_CategoryEntityCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$_CategoryEntity>
    implements _$$_CategoryEntityCopyWith<$Res> {
  __$$_CategoryEntityCopyWithImpl(
      _$_CategoryEntity _value, $Res Function(_$_CategoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? image = null,
    Object? itemCount = null,
  }) {
    return _then(_$_CategoryEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryEntity implements _CategoryEntity {
  const _$_CategoryEntity(
      {required this.id,
      required this.name,
      required this.code,
      required this.image,
      required this.itemCount});

  factory _$_CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String image;
  @override
  final int itemCount;

  @override
  String toString() {
    return 'CategoryEntity(id: $id, name: $name, code: $code, image: $image, itemCount: $itemCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, code, image, itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      __$$_CategoryEntityCopyWithImpl<_$_CategoryEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryEntityToJson(
      this,
    );
  }
}

abstract class _CategoryEntity implements CategoryEntity {
  const factory _CategoryEntity(
      {required final String id,
      required final String name,
      required final String code,
      required final String image,
      required final int itemCount}) = _$_CategoryEntity;

  factory _CategoryEntity.fromJson(Map<String, dynamic> json) =
      _$_CategoryEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get image;
  @override
  int get itemCount;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryEntityCopyWith<_$_CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}