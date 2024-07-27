



import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:surf_flutter_summer_school_24/features/upload_files/elementary_upload_files_gallery.dart';
import 'package:surf_flutter_summer_school_24/features/upload_files/upload_files_model.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/di/repositories_inherited.dart';

class UploadFilesWM extends WidgetModel
<ElementaryUploadFilesGallery, UploadFilesModel> {
  ValueListenable<List<XFile>> get photos => model.photos;
  final ImagePicker _imagePicker;


  UploadFilesWM(super.model) : _imagePicker = ImagePicker();



  Future<void> downloadPhotosFromGallery() async {
    final List<XFile> _photos = await _imagePicker.pickMultiImage();
    model.selectPhotos(_photos);
  }

  Future<void> downloadPhotosFromCamera() async {
    final XFile? photo = await _imagePicker.pickImage(source: ImageSource.camera);

    if (photo != null) model.selectPhotos([photo]);
  }


  void uploadPhotos() {
    model.uploadPhotos();
  }
  
}

UploadFilesWM createUploadFilesWM(BuildContext context) =>
  UploadFilesWM(UploadFilesModel(
      photoRepository: RepositoriesInherited.of(context).photoRepository
  ));