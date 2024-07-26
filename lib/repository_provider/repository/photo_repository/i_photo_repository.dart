


import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';

abstract interface class IPhotoListRepository {
  Future<int> getCountPhotos();
  Future<List<PhotoModel>> getPhotos();
}

abstract interface class ISinglePhotoRepository {
  Future<PhotoModel> getPhotoByIndexInRepository(int index);
}

abstract interface class IGlobalPhotoRepository
implements IPhotoListRepository, ISinglePhotoRepository {}
