// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoDTO _$PhotoDTOFromJson(Map<String, dynamic> json) {
  return _PhotoDTO.fromJson(json);
}

/// @nodoc
mixin _$PhotoDTO {
  int get size => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoDTOCopyWith<PhotoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDTOCopyWith<$Res> {
  factory $PhotoDTOCopyWith(PhotoDTO value, $Res Function(PhotoDTO) then) =
      _$PhotoDTOCopyWithImpl<$Res, PhotoDTO>;
  @useResult
  $Res call({int size, String name, String file, String created});
}

/// @nodoc
class _$PhotoDTOCopyWithImpl<$Res, $Val extends PhotoDTO>
    implements $PhotoDTOCopyWith<$Res> {
  _$PhotoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? name = null,
    Object? file = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoDTOImplCopyWith<$Res>
    implements $PhotoDTOCopyWith<$Res> {
  factory _$$PhotoDTOImplCopyWith(
          _$PhotoDTOImpl value, $Res Function(_$PhotoDTOImpl) then) =
      __$$PhotoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int size, String name, String file, String created});
}

/// @nodoc
class __$$PhotoDTOImplCopyWithImpl<$Res>
    extends _$PhotoDTOCopyWithImpl<$Res, _$PhotoDTOImpl>
    implements _$$PhotoDTOImplCopyWith<$Res> {
  __$$PhotoDTOImplCopyWithImpl(
      _$PhotoDTOImpl _value, $Res Function(_$PhotoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? name = null,
    Object? file = null,
    Object? created = null,
  }) {
    return _then(_$PhotoDTOImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoDTOImpl implements _PhotoDTO {
  const _$PhotoDTOImpl(
      {required this.size,
      required this.name,
      required this.file,
      required this.created});

  factory _$PhotoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoDTOImplFromJson(json);

  @override
  final int size;
  @override
  final String name;
  @override
  final String file;
  @override
  final String created;

  @override
  String toString() {
    return 'PhotoDTO(size: $size, name: $name, file: $file, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoDTOImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, name, file, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoDTOImplCopyWith<_$PhotoDTOImpl> get copyWith =>
      __$$PhotoDTOImplCopyWithImpl<_$PhotoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoDTOImplToJson(
      this,
    );
  }
}

abstract class _PhotoDTO implements PhotoDTO {
  const factory _PhotoDTO(
      {required final int size,
      required final String name,
      required final String file,
      required final String created}) = _$PhotoDTOImpl;

  factory _PhotoDTO.fromJson(Map<String, dynamic> json) =
      _$PhotoDTOImpl.fromJson;

  @override
  int get size;
  @override
  String get name;
  @override
  String get file;
  @override
  String get created;
  @override
  @JsonKey(ignore: true)
  _$$PhotoDTOImplCopyWith<_$PhotoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
