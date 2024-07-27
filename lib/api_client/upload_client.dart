



import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:surf_flutter_summer_school_24/api_client/api_secure_keys.dart';

abstract class UploadClient {
  static Future<void> uploadFile(String url, File file) async {
    final request = http.MultipartRequest('PUT', Uri.parse(url));
    request.headers['Authorization'] = 'OAuth ${ApiSecureKeys.key}';
    request.files.add(await http.MultipartFile.fromPath('file', file.path));
    print(request);
    final response = await request.send();
    print(response);
  }
}