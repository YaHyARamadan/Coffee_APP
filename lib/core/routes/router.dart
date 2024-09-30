import 'package:coffee_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import '../../features/pages_structure/view/pages_structure.dart';
import '../../features/start_screen/view/start_screen.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.startScreen:
      return MaterialPageRoute(
          builder: (context) => const StartScreen(), settings: routeSettings);
      case AppRoutes.mainScreen:
      return MaterialPageRoute(
          builder: (context) => const PagesStructure(), settings: routeSettings);

    default:
      return MaterialPageRoute(
          builder: (context) => const StartScreen(), settings: routeSettings);
  }
}
