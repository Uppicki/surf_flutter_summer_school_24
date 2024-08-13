// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoDTOImpl _$$PhotoDTOImplFromJson(Map<String, dynamic> json) =>
    _$PhotoDTOImpl(
      size: (json['size'] as num).toInt(),
      name: json['name'] as String,
      file: json['file'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$$PhotoDTOImplToJson(_$PhotoDTOImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'name': instance.name,
      'file': instance.file,
      'created': instance.created,
    };
