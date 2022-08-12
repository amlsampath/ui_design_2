import 'package:flutter/material.dart';
import 'package:new_ui_2/ui/course/course.dart';
import 'package:new_ui_2/ui/details_page/details_page.dart';
import 'package:new_ui_2/ui/home/home.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(settings: settings, builder: (context) => Home());
    case '/course':
      return MaterialPageRoute(settings: settings, builder: (context) => Course());
    case '/home':
      return MaterialPageRoute(settings: settings, builder: (context) => Home());
    case '/details_page':
      return MaterialPageRoute(settings: settings, builder: (context) => const DetailsPage());
    default:
      return MaterialPageRoute(settings: settings, builder: (context) => Course());
  }
}
