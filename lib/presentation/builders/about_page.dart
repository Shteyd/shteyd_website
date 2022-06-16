part of 'builder.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveBuilder(
        desktop: desktop.AboutPage(),
        mobile: mobile.AboutPage(),
      ),
    );
  }
}
