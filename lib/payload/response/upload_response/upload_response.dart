



import 'package:freezed_annotation/freezed_annotation.dart';



part 'upload_response.g.dart';
part 'upload_response.freezed.dart';

@freezed
class UploadResponse with _$UploadResponse {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UploadResponse({
    required String href,
    required String method,
    required bool templated
  }) = _UploadResponse;


  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}