part of 'builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveBuilder(
        desktop: desktop.HomePage(),
        mobile: mobile.HomePage(),
      ),
    );
  }
}
