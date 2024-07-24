









import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/feat/gallery/elementary_gallery_screen.dart';
import 'package:surf_flutter_summer_school_24/feat/gallery/gallery_model.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/repository/photo_repository/mock_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/screens/gallery_screen/gallery_screen.dart';

class GalleryWM extends WidgetModel
<ElementaryGalleryScreen, GalleryModel> {

  ValueListenable<int> get countPhotos => model.countPhotos;
  ValueListenable<List<PhotoModel>> get photos => model.photos;


  GalleryWM(GalleryModel model) : super(model);


  void loadCountPhotos() {
    model.getCountPhotos();
  }

  void loadPhotos() {
    model.getPhotos();
  }

}



GalleryWM createGalleryWM(BuildContext _) => GalleryWM(
  GalleryModel(photoRepository: MockPhotoRepository())
);