import 'package:flutter/material.dart';
import 'package:shteyd_site/presentation/builders/builder.dart';

class RouteManager {
  static const String home = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        throw const FormatException('Route not found!');
    }
  }
}
