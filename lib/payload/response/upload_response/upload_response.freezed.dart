// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadResponse _$UploadResponseFromJson(Map<String, dynamic> json) {
  return _UploadResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadResponse {
  String get href => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  bool get templated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadResponseCopyWith<UploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResponseCopyWith<$Res> {
  factory $UploadResponseCopyWith(
          UploadResponse value, $Res Function(UploadResponse) then) =
      _$UploadResponseCopyWithImpl<$Res, UploadResponse>;
  @useResult
  $Res call({String href, String method, bool templated});
}

/// @nodoc
class _$UploadResponseCopyWithImpl<$Res, $Val extends UploadResponse>
    implements $UploadResponseCopyWith<$Res> {
  _$UploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? method = null,
    Object? templated = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      templated: null == templated
          ? _value.templated
          : templated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadResponseImplCopyWith<$Res>
    implements $UploadResponseCopyWith<$Res> {
  factory _$$UploadResponseImplCopyWith(_$UploadResponseImpl value,
          $Res Function(_$UploadResponseImpl) then) =
      __$$UploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, String method, bool templated});
}

/// @nodoc
class __$$UploadResponseImplCopyWithImpl<$Res>
    extends _$UploadResponseCopyWithImpl<$Res, _$UploadResponseImpl>
    implements _$$UploadResponseImplCopyWith<$Res> {
  __$$UploadResponseImplCopyWithImpl(
      _$UploadResponseImpl _value, $Res Function(_$UploadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? method = null,
    Object? templated = null,
  }) {
    return _then(_$UploadResponseImpl(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      templated: null == templated
          ? _value.templated
          : templated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$UploadResponseImpl implements _UploadResponse {
  const _$UploadResponseImpl(
      {required this.href, required this.method, required this.templated});

  factory _$UploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResponseImplFromJson(json);

  @override
  final String href;
  @override
  final String method;
  @override
  final bool templated;

  @override
  String toString() {
    return 'UploadResponse(href: $href, method: $method, templated: $templated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadResponseImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.templated, templated) ||
                other.templated == templated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, method, templated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadResponseImplCopyWith<_$UploadResponseImpl> get copyWith =>
      __$$UploadResponseImplCopyWithImpl<_$UploadResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadResponse implements UploadResponse {
  const factory _UploadResponse(
      {required final String href,
      required final String method,
      required final bool templated}) = _$UploadResponseImpl;

  factory _UploadResponse.fromJson(Map<String, dynamic> json) =
      _$UploadResponseImpl.fromJson;

  @override
  String get href;
  @override
  String get method;
  @override
  bool get templated;
  @override
  @JsonKey(ignore: true)
  _$$UploadResponseImplCopyWith<_$UploadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
