



import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:surf_flutter_summer_school_24/features/upload_files/elementary_upload_files_gallery.dart';
import 'package:surf_flutter_summer_school_24/features/upload_files/upload_files_model.dart';

class UploadFilesWM extends WidgetModel
<ElementaryUploadFilesGallery, UploadFilesModel> {
  ValueListenable<List<String>> get photos => model.photos;
  final ImagePicker _imagePicker;


  UploadFilesWM(super.model) : _imagePicker = ImagePicker();



  Future<void> downloadPhotosFromGallery() async {
    final List<XFile> _photos = await _imagePicker.pickMultiImage();
    model.changedPhotos(_photos);
  }


  void downloadPhotos() {

  }
  
}

UploadFilesWM createUploadFilesWM(BuildContext _) =>
  UploadFilesWM(UploadFilesModel());