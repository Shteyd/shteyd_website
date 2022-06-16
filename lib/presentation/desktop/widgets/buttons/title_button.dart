part of '../../desktop.dart';

class TitleButton extends HookWidget {
  const TitleButton({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    final hover = useState<bool>(false);
    return MouseRegion(
      onHover: (PointerEvent details) => hover.value = true,
      onExit: (PointerEvent details) => hover.value = false,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(route),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            color: hover.value ? Colors.blue : null,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: hover.value ? Colors.white : null,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
