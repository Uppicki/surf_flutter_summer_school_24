








import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/i_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/uikit/icons/icons_scheme.dart';

class GalleryModel extends ElementaryModel{
  final ValueNotifier<List<PhotoModel>> photos = ValueNotifier([]);
  final ValueNotifier<int> countPhotos = ValueNotifier(-1);
  final IPhotoListRepository _photoRepository;


GalleryModel({required IPhotoListRepository photoRepository}) :
_photoRepository = photoRepository;


void getPhotos() async {
  final _photos = await _photoRepository.getPhotos();
  countPhotos.value = _photos.length;
  photos.value = _photos;
}

void getCountPhotos() async {
  countPhotos.value = await _photoRepository.getCountPhotos();
}



}