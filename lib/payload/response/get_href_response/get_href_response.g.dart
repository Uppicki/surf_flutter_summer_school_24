// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_href_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetHrefResponseImpl _$$GetHrefResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetHrefResponseImpl(
      href: json['href'] as String,
      operationId: json['operation_id'] as String,
      method: json['method'] as String,
      templated: json['templated'] as bool,
    );

Map<String, dynamic> _$$GetHrefResponseImplToJson(
        _$GetHrefResponseImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'operation_id': instance.operationId,
      'method': instance.method,
      'templated': instance.templated,
    };
