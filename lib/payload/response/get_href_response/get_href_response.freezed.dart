// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_href_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetHrefResponse _$GetHrefResponseFromJson(Map<String, dynamic> json) {
  return _GetHrefResponse.fromJson(json);
}

/// @nodoc
mixin _$GetHrefResponse {
  String get href => throw _privateConstructorUsedError;
  String get operationId => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  bool get templated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetHrefResponseCopyWith<GetHrefResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHrefResponseCopyWith<$Res> {
  factory $GetHrefResponseCopyWith(
          GetHrefResponse value, $Res Function(GetHrefResponse) then) =
      _$GetHrefResponseCopyWithImpl<$Res, GetHrefResponse>;
  @useResult
  $Res call({String href, String operationId, String method, bool templated});
}

/// @nodoc
class _$GetHrefResponseCopyWithImpl<$Res, $Val extends GetHrefResponse>
    implements $GetHrefResponseCopyWith<$Res> {
  _$GetHrefResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? operationId = null,
    Object? method = null,
    Object? templated = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      operationId: null == operationId
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GetHrefResponseImplCopyWith<$Res>
    implements $GetHrefResponseCopyWith<$Res> {
  factory _$$GetHrefResponseImplCopyWith(_$GetHrefResponseImpl value,
          $Res Function(_$GetHrefResponseImpl) then) =
      __$$GetHrefResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, String operationId, String method, bool templated});
}

/// @nodoc
class __$$GetHrefResponseImplCopyWithImpl<$Res>
    extends _$GetHrefResponseCopyWithImpl<$Res, _$GetHrefResponseImpl>
    implements _$$GetHrefResponseImplCopyWith<$Res> {
  __$$GetHrefResponseImplCopyWithImpl(
      _$GetHrefResponseImpl _value, $Res Function(_$GetHrefResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? operationId = null,
    Object? method = null,
    Object? templated = null,
  }) {
    return _then(_$GetHrefResponseImpl(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      operationId: null == operationId
          ? _value.operationId
          : operationId // ignore: cast_nullable_to_non_nullable
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
class _$GetHrefResponseImpl implements _GetHrefResponse {
  const _$GetHrefResponseImpl(
      {required this.href,
      required this.operationId,
      required this.method,
      required this.templated});

  factory _$GetHrefResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetHrefResponseImplFromJson(json);

  @override
  final String href;
  @override
  final String operationId;
  @override
  final String method;
  @override
  final bool templated;

  @override
  String toString() {
    return 'GetHrefResponse(href: $href, operationId: $operationId, method: $method, templated: $templated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHrefResponseImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.operationId, operationId) ||
                other.operationId == operationId) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.templated, templated) ||
                other.templated == templated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, href, operationId, method, templated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHrefResponseImplCopyWith<_$GetHrefResponseImpl> get copyWith =>
      __$$GetHrefResponseImplCopyWithImpl<_$GetHrefResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetHrefResponseImplToJson(
      this,
    );
  }
}

abstract class _GetHrefResponse implements GetHrefResponse {
  const factory _GetHrefResponse(
      {required final String href,
      required final String operationId,
      required final String method,
      required final bool templated}) = _$GetHrefResponseImpl;

  factory _GetHrefResponse.fromJson(Map<String, dynamic> json) =
      _$GetHrefResponseImpl.fromJson;

  @override
  String get href;
  @override
  String get operationId;
  @override
  String get method;
  @override
  bool get templated;
  @override
  @JsonKey(ignore: true)
  _$$GetHrefResponseImplCopyWith<_$GetHrefResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
