// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoListResponseImpl _$$PhotoListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoListResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => PhotoDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$PhotoListResponseImplToJson(
        _$PhotoListResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'limit': instance.limit,
    };
