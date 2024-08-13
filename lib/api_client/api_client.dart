
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:surf_flutter_summer_school_24/api_client/api_urls.dart';
import 'package:surf_flutter_summer_school_24/payload/response/photo_list_response/photo_list_response.dart';

part 'api_client.g.dart';


@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiUrls.getPhotosByTimeUpload)
  Future<PhotoListResponse> getPhotos({
    @Query('media_type') String mediaType = 'image'
  });
}