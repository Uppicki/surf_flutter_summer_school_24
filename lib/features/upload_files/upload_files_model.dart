




import 'dart:io';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/i_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/photo_repository.dart';

class UploadFilesModel extends ElementaryModel {
  final PhotoRepository _photoRepository;

  final ValueNotifier<List<XFile>> photos = ValueNotifier([]);


  UploadFilesModel({required PhotoRepository photoRepository}) :
        _photoRepository = photoRepository;



  Future<void> uploadPhotos() async {
    final photo = photos.value.first;
    final href = await _photoRepository.getHrefUpload(photo.name);

    await _photoRepository.uploadPhoto(
        url: href,
        file: File(photo.path)
    );
  }


  void selectPhotos(List<XFile> innerPhotos) {
    final list = List<XFile>.from(photos.value);

    list.addAll(innerPhotos);

    photos.value = list;
  }


}