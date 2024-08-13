import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/gallery_photo_repository/repository/intarfaces/interfaces.dart';



class RepositoriesInherited extends InheritedWidget {
  final IGalleryRepository _repository;

  IGalleryRepository get repository => _repository;


  const RepositoriesInherited({
    super.key,
    required Widget child,
    required IGalleryRepository repository,
  }) : _repository =repository, super(child: child);

  static IGalleryRepository? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<RepositoriesInherited>()
        ?.repository;
  }


  static IGalleryRepository of(BuildContext context) {
    final IGalleryRepository? result = maybeOf(context);
    assert(result != null, 'No RepositoriesInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(RepositoriesInherited old) => false;
}