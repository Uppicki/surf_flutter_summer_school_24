import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_summer_school_24/router/app_router.dart';
import 'package:surf_flutter_summer_school_24/router/route_names.dart';
import 'package:surf_flutter_summer_school_24/screens/slider_screen/slider_screen.dart';
import 'package:surf_flutter_summer_school_24/storage/theme/theme_storage.dart';
import 'package:surf_flutter_summer_school_24/theme_service/controller/theme_controller.dart';
import 'package:surf_flutter_summer_school_24/theme_service/di/theme_inherited.dart';
import 'package:surf_flutter_summer_school_24/theme_service/repository/theme_repository.dart';
import 'package:surf_flutter_summer_school_24/theme_service/ui/theme_builder.dart';
import 'package:surf_flutter_summer_school_24/uikit/theme/app_theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  final themeStorage = ThemeStorage(preferences: prefs);
  final themeRepository = ThemeRepository(themeStorage: themeStorage);
  final themeController = ThemeController(themeRepository: themeRepository);

  runApp(MainApp(themeController: themeController));
}

class MainApp extends StatelessWidget {
  final ThemeController themeController;

  const MainApp({super.key, required this.themeController});

  @override
  Widget build(BuildContext context) {
    return ThemeInherited(
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
    );
  }
}
