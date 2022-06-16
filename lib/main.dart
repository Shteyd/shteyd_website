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
        "/skills-and-experience": (context) => const SkillsAndExperiencePage(),
        "/about": (context) => const AboutPage(),
        "/social-media": (context) => const SocialMedia(),
      },
    );
  }
}
