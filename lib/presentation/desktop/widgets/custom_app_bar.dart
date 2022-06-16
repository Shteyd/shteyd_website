part of '../desktop.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: const [
          Label(),
          Spacer(flex: 10),
          TitleButton(
            text: 'Home',
            route: '/',
          ),
          Spacer(),
          TitleButton(
            text: 'Skills & Experience',
            route: '/skills-and-experience',
          ),
          Spacer(),
          TitleButton(
            text: 'About',
            route: '/about',
          ),
          Spacer(flex: 10),
          EnterButton(
            text: 'Let\'s chat',
            route: '/social-media',
          ),
        ],
      ),
    );
  }
}
