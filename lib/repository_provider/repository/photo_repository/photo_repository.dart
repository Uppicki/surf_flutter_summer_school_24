





import 'dart:io';


import 'package:surf_flutter_summer_school_24/api_client/api_client.dart';
import 'package:surf_flutter_summer_school_24/api_client/upload_client.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/payload/request/upload_request/upload_request.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/i_photo_repository.dart';

class PhotoRepository implements IGlobalPhotoRepository {
  ApiClient _client;



  PhotoRepository({
    required ApiClient apiClient,
}) : _client = apiClient;




  Future<String> getHrefUpload(String name) async {
    final res = await _client.getHref(path: name);

    return res.href;
  }

  Future<void> uploadPhoto({
    required String url,
    required File file,
}) async {
    await UploadClient.uploadFile(
        url,
      file
    );
  }





  @override
  Future<int> getCountPhotos() async{
    return 0;
  }

  @override
  Future<PhotoModel> getPhotoByIndexInRepository(int index) async {
    return PhotoModel(imageUrl: '');
  }

  @override
  Future<List<PhotoModel>> getPhotos() async {
    return <PhotoModel>[];
  }


}