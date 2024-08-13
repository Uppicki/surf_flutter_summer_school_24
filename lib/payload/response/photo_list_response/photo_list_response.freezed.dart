// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoListResponse _$PhotoListResponseFromJson(Map<String, dynamic> json) {
  return _PhotoListResponse.fromJson(json);
}

/// @nodoc
mixin _$PhotoListResponse {
  List<PhotoDTO> get items => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoListResponseCopyWith<PhotoListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoListResponseCopyWith<$Res> {
  factory $PhotoListResponseCopyWith(
          PhotoListResponse value, $Res Function(PhotoListResponse) then) =
      _$PhotoListResponseCopyWithImpl<$Res, PhotoListResponse>;
  @useResult
  $Res call({List<PhotoDTO> items, int limit});
}

/// @nodoc
class _$PhotoListResponseCopyWithImpl<$Res, $Val extends PhotoListResponse>
    implements $PhotoListResponseCopyWith<$Res> {
  _$PhotoListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PhotoDTO>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoListResponseImplCopyWith<$Res>
    implements $PhotoListResponseCopyWith<$Res> {
  factory _$$PhotoListResponseImplCopyWith(_$PhotoListResponseImpl value,
          $Res Function(_$PhotoListResponseImpl) then) =
      __$$PhotoListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PhotoDTO> items, int limit});
}

/// @nodoc
class __$$PhotoListResponseImplCopyWithImpl<$Res>
    extends _$PhotoListResponseCopyWithImpl<$Res, _$PhotoListResponseImpl>
    implements _$$PhotoListResponseImplCopyWith<$Res> {
  __$$PhotoListResponseImplCopyWithImpl(_$PhotoListResponseImpl _value,
      $Res Function(_$PhotoListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? limit = null,
  }) {
    return _then(_$PhotoListResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PhotoDTO>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoListResponseImpl implements _PhotoListResponse {
  const _$PhotoListResponseImpl(
      {required final List<PhotoDTO> items, required this.limit})
      : _items = items;

  factory _$PhotoListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoListResponseImplFromJson(json);

  final List<PhotoDTO> _items;
  @override
  List<PhotoDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int limit;

  @override
  String toString() {
    return 'PhotoListResponse(items: $items, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoListResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoListResponseImplCopyWith<_$PhotoListResponseImpl> get copyWith =>
      __$$PhotoListResponseImplCopyWithImpl<_$PhotoListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoListResponseImplToJson(
      this,
    );
  }
}

abstract class _PhotoListResponse implements PhotoListResponse {
  const factory _PhotoListResponse(
      {required final List<PhotoDTO> items,
      required final int limit}) = _$PhotoListResponseImpl;

  factory _PhotoListResponse.fromJson(Map<String, dynamic> json) =
      _$PhotoListResponseImpl.fromJson;

  @override
  List<PhotoDTO> get items;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$PhotoListResponseImplCopyWith<_$PhotoListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
