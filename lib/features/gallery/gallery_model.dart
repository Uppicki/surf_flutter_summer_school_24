





import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/features/gallery/gallery_screen_state/gallery_screen_state.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/gallery_photo_repository/repository/intarfaces/interfaces.dart';

class GalleryModel extends ElementaryModel{
  final ValueNotifier<GalleryScreenState> photos =
    ValueNotifier(GalleryScreenState.initial());
  final IGalleryPhotoRepository _photoRepository;


GalleryModel({required IGalleryPhotoRepository photoRepository}) :
_photoRepository = photoRepository;


  Future<void> getPhotos() async {
    _setLoadingState();

    final _photos = await _photoRepository.getPhotos();

    _setLoadedState(_photos);
  }


  void _setLoadingState() {
    final state = photos.value;

    photos.value = state.map(
        initial: (_) => GalleryScreenState.loading(photos: []),
        empty: (_) => GalleryScreenState.loading(photos: []),
        loading: (state) => GalleryScreenState.loading(photos: state.photos),
        loaded: (state) => GalleryScreenState.loading(photos: state.photos)
    );
  }

  void _setLoadedState(List<PhotoModel> newPhotos) {
    final state = photos.value;

    photos.value = state.map(
        initial: (_) => GalleryScreenState.loaded(photos: List.from(newPhotos)),
        empty: (_) => GalleryScreenState.loaded(photos: List.from(newPhotos)),
        loading: (state) {
          if (state.photos.isEmpty && newPhotos.isEmpty) {
            return GalleryScreenState.empty();
          }

          final copiedPhotos = List<PhotoModel>.from(state.photos);
          copiedPhotos.addAll(newPhotos);

          return GalleryScreenState.loaded(photos: copiedPhotos);
        },
        loaded: (state) {
          final copiedPhotos = List<PhotoModel>.from(state.photos);
          copiedPhotos.addAll(newPhotos);

          return GalleryScreenState.loaded(photos: copiedPhotos);
        },
    );
  }

}