





import 'package:dio/dio.dart';
import 'package:surf_flutter_summer_school_24/api_client/api_secure_keys.dart';
import 'package:surf_flutter_summer_school_24/api_client/api_urls.dart';

Dio initDio() {
  const timeout = Duration(seconds: 30);

  final dio = Dio();

  const String baseUrl = ApiUrls.baseUrl;

  dio.options
    ..baseUrl = baseUrl
    ..connectTimeout = timeout
    ..receiveTimeout = timeout
    ..sendTimeout = timeout
    ..contentType = Headers.jsonContentType;


  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers['Authorization'] = 'OAuth ${ApiSecureKeys.key}';
    }
  ));


  dio.interceptors.add(LogInterceptor(requestBody: true,
      responseBody: true)); // Можно указать true, чтобы видеть и тело ответа



  return dio;
}