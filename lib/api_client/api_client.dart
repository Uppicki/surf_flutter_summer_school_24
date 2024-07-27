
import 'dart:io';


import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:surf_flutter_summer_school_24/api_client/api_urls.dart';
import 'package:surf_flutter_summer_school_24/payload/request/upload_request/upload_request.dart';
import 'package:surf_flutter_summer_school_24/payload/response/get_href_response/get_href_response.dart';
import 'package:surf_flutter_summer_school_24/payload/response/upload_response/upload_response.dart';

part 'api_client.g.dart';


@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiUrls.upload)
  Future<GetHrefResponse> getHref({
    @Query('path') required String path
});
}