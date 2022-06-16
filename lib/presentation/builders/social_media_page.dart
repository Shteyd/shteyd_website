part of 'builder.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveBuilder(
        desktop: desktop.SocialMedia(),
        mobile: mobile.SocialMedia(),
      ),
    );
  }
}
