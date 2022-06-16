part of 'widgets.dart';

class Label extends HookWidget {
  const Label({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Shteyd",
            style: GoogleFonts.montserrat(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: ".",
            style: GoogleFonts.montserrat(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
