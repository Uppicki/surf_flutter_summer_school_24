

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_href_response.g.dart';
part 'get_href_response.freezed.dart';

@freezed
class GetHrefResponse with _$GetHrefResponse {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetHrefResponse({
    required String href,
    required String operationId,
    required String method,
    required bool templated
}) = _GetHrefResponse;


  factory GetHrefResponse.fromJson(Map<String, dynamic> json) =>
      _$GetHrefResponseFromJson(json);
}
