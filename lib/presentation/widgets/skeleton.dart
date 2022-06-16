// I don't know what to call this widget :D

part of 'widgets.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
