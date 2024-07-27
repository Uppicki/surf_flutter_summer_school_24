







import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/i_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/photo_repository.dart';

class Repository {
  final PhotoRepository _photoRepository;

  PhotoRepository get photoRepository => _photoRepository;

  Repository({
    required PhotoRepository photoRepository,
  }) :
      _photoRepository = photoRepository;

}