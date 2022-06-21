import 'package:flutter/material.dart';
import 'package:shteyd_site/presentation/builders/builder.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const ShteydWebsite());
}

class ShteydWebsite extends StatelessWidget {
  const ShteydWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => const HomePage(),
      },
    );
  }
}
