part of '../desktop.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2.5,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey,
      ),
    );
  }
}
