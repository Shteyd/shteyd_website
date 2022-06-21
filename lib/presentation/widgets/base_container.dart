part of 'widgets.dart';

class BaseContainer extends StatelessWidget {
  final Widget? child;
  final Color color;
  final double scale;

  const BaseContainer({
    Key? key,
    this.child,
    this.color = Colors.black,
    this.scale = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * scale,
      color: color,
      child: child,
    );
  }
}
