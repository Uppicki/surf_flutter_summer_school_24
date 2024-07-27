






import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/gallery/gallery_wm.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/uikit/widgets/grid_builder.dart';

class ElementaryGalleryScreen extends ElementaryWidget<GalleryWM> {
  const ElementaryGalleryScreen({Key? key}) :
  super(createGalleryWM, key: key);

  @override
  Widget build(GalleryWM wm) {

    return Scaffold(
        appBar: AppBar(
          title: Image.asset(wm.logoIcon),
          actions: [
            IconButton(
                onPressed: () {
                  wm.showMyBottomSheet();
                },
                icon: Image.asset(wm.settingsIcon)),
            const SizedBox(width: 10)
          ],
        ),
        body: ValueListenableBuilder<int>(
            valueListenable: wm.countPhotos,
            builder: (_, count,__) {
              if (count == -1) {
                wm.loadCountPhotos();
                return CircularProgressIndicator();
              }
              return ValueListenableBuilder<List<PhotoModel>>(
                  valueListenable: wm.photos,
                  builder: (_, value, __) {
                    if (value.isEmpty) {
                      wm.loadPhotos();
                      return MyGridBuilder(itemCount: count);
                    }

                    return MyGridBuilder(
                      itemCount: value.length,
                      items: value,
                    );
                  }
              );
            }
        )
    );


  }




}