




import 'dart:io';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/upload_files/upload_files_wm.dart';

class ElementaryUploadFilesGallery 
  extends ElementaryWidget<UploadFilesWM>
{


  const ElementaryUploadFilesGallery({Key? key}) :
    super (createUploadFilesWM, key: key);


    
  @override
  Widget build(UploadFilesWM wm) {
    return AlertDialog(
      title: const Text('Пока не придумал'),
      content: Container(
        width: double.maxFinite,
        height: 200,
        child: ValueListenableBuilder<List<String>>(
          valueListenable: wm.photos,
          builder: (_, photos, ___) {
            return GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 4,
            ),
            itemCount: photos.length,
            itemBuilder: (_, index) => 
              Image.file(
                File(photos[index]), 
                fit: BoxFit.cover)
              
      );
          }
           
          )
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () async {
            wm.downloadPhotosFromGallery();
          },
          child: Text(
            'Галлерея',
            style: TextStyle(
              color: Colors.black
            ),
            ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Камера',
            style: TextStyle(
              color: Colors.black
            ),
            )
        ),
        TextButton(
          onPressed: () {},
          child: Text('Загрузить')
        ),
      ],
    );
  }



  }