

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_summer_school_24/api_client/api_client.dart';
import 'package:surf_flutter_summer_school_24/init_dio.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/di/repositories_inherited.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/i_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/mock_photo_repository.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/photo_repository.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/repository.dart';
import 'package:surf_flutter_summer_school_24/router/app_router.dart';
import 'package:surf_flutter_summer_school_24/router/route_names.dart';
import 'package:surf_flutter_summer_school_24/storage/theme/theme_storage.dart';
import 'package:surf_flutter_summer_school_24/theme_provider/controller/theme_controller.dart';
import 'package:surf_flutter_summer_school_24/theme_provider/di/theme_inherited.dart';
import 'package:surf_flutter_summer_school_24/theme_provider/repository/theme_repository.dart';
import 'package:surf_flutter_summer_school_24/theme_provider/ui/theme_builder.dart';
import 'package:surf_flutter_summer_school_24/uikit/theme/app_theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  final dio = initDio();

  final apiClient = ApiClient(dio);

  final themeStorage = ThemeStorage(preferences: prefs);
  final themeRepository = ThemeRepository(themeStorage: themeStorage);
  final themeController = ThemeController(themeRepository: themeRepository);

  final PhotoRepository photoRepository = PhotoRepository(apiClient: apiClient);

  final repository = Repository(photoRepository: photoRepository);
  
  
  runApp(
      MainApp(
        themeController: themeController,
        repository: repository,)
  );
}

class MainApp extends StatelessWidget {
  final ThemeController themeController;
  final Repository repository;

  const MainApp({super.key, required this.themeController, required this.repository});

  @override
  Widget build(BuildContext context) {
    return RepositoriesInherited(
      repository: repository,
      child: ThemeInherited(
        themeController: themeController,
        child: ThemeBuilder(
          builder: (_, themeMode) => MaterialApp(
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeMode,
            onGenerateRoute: AppRouter.generatedRoute,
            initialRoute: RouteNames.galleryScreen,
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
