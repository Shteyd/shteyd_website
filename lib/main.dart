import 'package:flutter/material.dart';
import 'package:shteyd_site/presentation/route/route.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const ShteydWebsite());
}

class ShteydWebsite extends StatelessWidget {
  const ShteydWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteManager.home,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
