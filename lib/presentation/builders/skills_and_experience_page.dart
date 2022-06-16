part of 'builder.dart';

class SkillsAndExperiencePage extends StatelessWidget {
  const SkillsAndExperiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveBuilder(
        desktop: desktop.SkillsAndExperiencePage(),
        mobile: mobile.SkillsAndExperiencePage(),
      ),
    );
  }
}
