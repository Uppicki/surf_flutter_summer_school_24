// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadRequest _$UploadRequestFromJson(Map<String, dynamic> json) {
  return _UploadRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadRequest {
  String get path => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadRequestCopyWith<UploadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadRequestCopyWith<$Res> {
  factory $UploadRequestCopyWith(
          UploadRequest value, $Res Function(UploadRequest) then) =
      _$UploadRequestCopyWithImpl<$Res, UploadRequest>;
  @useResult
  $Res call({String path, String url});
}

/// @nodoc
class _$UploadRequestCopyWithImpl<$Res, $Val extends UploadRequest>
    implements $UploadRequestCopyWith<$Res> {
  _$UploadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadRequestImplCopyWith<$Res>
    implements $UploadRequestCopyWith<$Res> {
  factory _$$UploadRequestImplCopyWith(
          _$UploadRequestImpl value, $Res Function(_$UploadRequestImpl) then) =
      __$$UploadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String url});
}

/// @nodoc
class __$$UploadRequestImplCopyWithImpl<$Res>
    extends _$UploadRequestCopyWithImpl<$Res, _$UploadRequestImpl>
    implements _$$UploadRequestImplCopyWith<$Res> {
  __$$UploadRequestImplCopyWithImpl(
      _$UploadRequestImpl _value, $Res Function(_$UploadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? url = null,
  }) {
    return _then(_$UploadRequestImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadRequestImpl implements _UploadRequest {
  const _$UploadRequestImpl({required this.path, required this.url});

  factory _$UploadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadRequestImplFromJson(json);

  @override
  final String path;
  @override
  final String url;

  @override
  String toString() {
    return 'UploadRequest(path: $path, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadRequestImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadRequestImplCopyWith<_$UploadRequestImpl> get copyWith =>
      __$$UploadRequestImplCopyWithImpl<_$UploadRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadRequestImplToJson(
      this,
    );
  }
}

abstract class _UploadRequest implements UploadRequest {
  const factory _UploadRequest(
      {required final String path,
      required final String url}) = _$UploadRequestImpl;

  factory _UploadRequest.fromJson(Map<String, dynamic> json) =
      _$UploadRequestImpl.fromJson;

  @override
  String get path;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$UploadRequestImplCopyWith<_$UploadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
