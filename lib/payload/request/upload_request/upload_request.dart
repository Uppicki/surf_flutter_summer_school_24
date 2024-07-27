import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_request.freezed.dart';
part 'upload_request.g.dart';


@freezed
class UploadRequest with _$UploadRequest {
  const factory UploadRequest({
    required String path,
    required String url
}) = _UploadRequest;

  factory UploadRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadRequestFromJson(json);
}