






import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/router/route_names.dart';
import 'package:surf_flutter_summer_school_24/screens/gallery_screen/gallery_screen.dart';
import 'package:surf_flutter_summer_school_24/screens/slider_screen/slider_screen.dart';

class AppRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.galleryScreen:
        return MaterialPageRoute(builder: (_) => GalleryScreen());
      case RouteNames.sliderScreen:
        final args = settings.arguments as int; // Cast the arguments to the expected type
        return MaterialPageRoute(builder: (_) => SliderScreen(startIndex: args));
      default:
        return MaterialPageRoute(builder: (_) =>
            Scaffold(
              body: Center(
                child: Text("No route defined with ${settings.name} name"),
              ),
            ));
    }
  }
}