import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/gallery/elementary_gallery_screen.dart';
import 'package:surf_flutter_summer_school_24/features/gallery/gallery_model.dart';
import 'package:surf_flutter_summer_school_24/features/upload_files/elementary_upload_files_gallery.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/di/repositories_inherited.dart';
import 'package:surf_flutter_summer_school_24/theme_provider/di/theme_inherited.dart';
import 'package:surf_flutter_summer_school_24/uikit/icons/icons_scheme.dart';

class GalleryWM extends WidgetModel<ElementaryGalleryScreen, GalleryModel> {
  ValueListenable<int> get countPhotos => model.countPhotos;

  ValueListenable<List<PhotoModel>> get photos => model.photos;

  GalleryWM(GalleryModel model) : super(model);

  void showMyBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding:
              const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  leading: Image.asset(IconsScheme.of(context).themeIcon),
                  title: Text('Тема'),
                  trailing: ThemeInherited.of(context).isLightMode
                      ? Text('Светлая')
                      : Text('Тёмная'),
                  onTap: () {
                    ThemeInherited.of(context).switchThemeMode();
                  }),
              ListTile(
                  leading: Image.asset(IconsScheme.of(context).uploadIcon),
                  title: Text('Загрузить фото...'),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => ElementaryUploadFilesGallery());
                  }),
            ],
          ),
        );
      },
    );
  }

  void loadCountPhotos() {
    model.getCountPhotos();
  }

  void loadPhotos() {
    model.getPhotos();
  }

  String get logoIcon => IconsScheme.of(context).logoIcon;

  String get settingsIcon => IconsScheme.of(context).settingsIcon;
}

GalleryWM createGalleryWM(BuildContext context) => GalleryWM(GalleryModel(
    photoRepository: RepositoriesInherited.of(context).photoRepository));
