






import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/gallery/gallery_screen_state/gallery_screen_state.dart';
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
        body: ValueListenableBuilder<GalleryScreenState>(
            valueListenable: wm.photos,
            builder: (_, photos, __) =>
                photos.map(
                    initial: (_) {
                      wm.loadPhotos();
                      return Center(child: Text("Init state"));
                    },
                    empty: (_) => Center(child: Text("Empty")), 
                    loading: (_) => Center(child: Text("Идёт загрузка")),
                    loaded: (state) => MyGridBuilder(itemCount: state.photos.length, items: state.photos,)
                )
        )
    );


  }




}