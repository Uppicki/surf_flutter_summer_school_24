import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';

part 'gallery_screen_state.freezed.dart';


@freezed
class GalleryScreenState with _$GalleryScreenState {
  const factory GalleryScreenState.initial() = InitialGalleryScreenState;

  const factory GalleryScreenState.empty() = EmptyGalleryScreenState;


  const factory GalleryScreenState.loading({
    required List<PhotoModel> photos
}) = LoadingGalleryScreenState;


  const factory GalleryScreenState.loaded({
    required List<PhotoModel> photos
}) = LoadedGalleryScreenState;


}