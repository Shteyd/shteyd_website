part of 'builder.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    Key? key,
    required this.desktop,
    required this.mobile,
  }) : super(key: key);

  final Widget desktop;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 656) {
          return desktop;
        }
        return mobile;
      },
    );
  }
}
