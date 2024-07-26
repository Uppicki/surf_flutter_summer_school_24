






import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/repository.dart';

class RepositoriesInherited extends InheritedWidget {
  final Repository _repository;

  Repository get repository => _repository;


  const RepositoriesInherited({
    super.key,
    required Widget child,
    required Repository repository,
  }) : _repository =repository, super(child: child);

  static Repository? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<RepositoriesInherited>()
        ?.repository;
  }


  static Repository of(BuildContext context) {
    final Repository? result = maybeOf(context);
    assert(result != null, 'No RepositoriesInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(RepositoriesInherited old) => false;
}
