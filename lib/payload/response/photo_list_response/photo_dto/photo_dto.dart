import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_dto.g.dart';
part 'photo_dto.freezed.dart';


@freezed
class PhotoDTO with _$PhotoDTO {
  const factory PhotoDTO({
    required int size,
    required String name,
    required String file,
    required String created
}) = _PhotoDTO;


  factory PhotoDTO.fromJson(Map<String, dynamic> json) =>
      _$PhotoDTOFromJson(json);
}