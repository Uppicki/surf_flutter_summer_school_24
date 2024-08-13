import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_summer_school_24/payload/response/photo_list_response/photo_dto/photo_dto.dart';

part 'photo_list_response.freezed.dart';
part 'photo_list_response.g.dart';


@freezed
class PhotoListResponse with _$PhotoListResponse {
  const factory PhotoListResponse({
    required List<PhotoDTO> items,
    required int limit,
}) = _PhotoListResponse;

  factory PhotoListResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoListResponseFromJson(json);
}
