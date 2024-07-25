


import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:surf_flutter_summer_school_24/repository/photo_repository/mock_photo_repository.dart';

class UploadFilesModel extends ElementaryModel {
  final MockPhotoRepository _repository = MockPhotoRepository();
  final ValueNotifier<List<String>> photos = ValueNotifier([]);

  void changedPhotos(List<XFile> innerPhotos) {
    final list = List<String>.from(photos.value);

    innerPhotos.forEach((element) {
      if (!list.contains(element.path)) list.add(element.path);
    });

    photos.value = list;
  }


}