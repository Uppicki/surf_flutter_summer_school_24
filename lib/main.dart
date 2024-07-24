import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/router/app_router.dart';
import 'package:surf_flutter_summer_school_24/router/route_names.dart';
import 'package:surf_flutter_summer_school_24/screens/slider_screen/slider_screen.dart';
import 'package:surf_flutter_summer_school_24/uikit/theme/app_theme_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightTheme,
      onGenerateRoute: AppRouter.generatedRoute,
      initialRoute: RouteNames.galleryScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}
