





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
      print('Request: ${options.method} ${options.uri}');
      options.headers['Authorization'] = 'OAuth ${ApiSecureKeys.KEY}';
      handler.next(options);
    }
  ));


  dio.interceptors.add(LogInterceptor(requestBody: true,
      responseBody: true));


  return dio;
}