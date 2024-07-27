// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadResponseImpl _$$UploadResponseImplFromJson(Map<String, dynamic> json) =>
    _$UploadResponseImpl(
      href: json['href'] as String,
      method: json['method'] as String,
      templated: json['templated'] as bool,
    );

Map<String, dynamic> _$$UploadResponseImplToJson(
        _$UploadResponseImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'method': instance.method,
      'templated': instance.templated,
    };
