import 'package:surf_flutter_summer_school_24/api_client/api_client.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/gallery_photo_repository/repository/intarfaces/interfaces.dart';

class GalleryRepository implements IGalleryRepository {
  final ApiClient _client;


  GalleryRepository({required ApiClient client}) : _client = client;



  @override
  Future<int> getCountPhotos() async {
    return 0;
  }

  @override
  Future<PhotoModel> getPhotoByIndexInRepository(int index) async {
    return PhotoModel(imageUrl: '');
  }

  @override
  Future<List<PhotoModel>> getPhotos() async {
    final response = await _client.getPhotos();

    print(response);

    final responsePhotos = response.items;
    final photos = responsePhotos.map((el) =>
        PhotoModel(imageUrl: el.file)).toList();

    return photos;
  }

}