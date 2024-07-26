






import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/i_photo_repository.dart';

class Repository {
  final IGlobalPhotoRepository _photoRepository;

  IGlobalPhotoRepository get photoRepository => _photoRepository;

  Repository({required IGlobalPhotoRepository photoRepository}) :
      _photoRepository = photoRepository;
}