import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/featers/gallery/elementary_gallery_screen.dart';
import 'package:surf_flutter_summer_school_24/featers/upload_files/elementary_upload_files_gallery.dart';
import 'package:surf_flutter_summer_school_24/theme_service/di/theme_inherited.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/png/logo.png'),
        actions: [
          IconButton(
              onPressed: () {
                _showModalBottomSheet(context);
              },
              icon: Image.asset('assets/png/settings.png')),
          const SizedBox(width: 10)
        ],
      ),
      body: ElementaryGalleryScreen()
      );
  }

  void _showModalBottomSheet(BuildContext context) {
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
                leading: Image.asset('assets/png/theme.png'),
                  title: Text('Тема'),
                  trailing: Text('Светлая'),
                  onTap: () {
                    ThemeInherited.of(context).switchThemeMode();
                  }
              ),
              ListTile(
                leading: Image.asset('assets/png/upload.png'),
                title: Text('Загрузить фото...'),
                onTap: () {
                  showDialog(
                    context: context, 
                    builder: (_) =>
                    ElementaryUploadFilesGallery()
                  );
                }
              ),
            ],
          ),
        );
      },
    );
  }
}
