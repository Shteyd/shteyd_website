part of '../mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int clickValue = 0;

  void _clickButton() {
    if (clickValue == 4) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text("Wow! Yes, it's an Easter egg!"),
            content: Text(
              'How did my username "Shteyd" come about? It\'s very '
              'simple: Shteyd -> Штеуд -> Intel '
              '(look at the keyboard when typing :D)',
            ),
            alignment: Alignment.topCenter,
          );
        },
      );

      setState(() => clickValue = 0);
    }

    setState(() => clickValue++);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Skeleton(
      children: [
        BaseContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Spacer(),
                SizedBox(
                  width: size.width,
                  child: FittedBox(
                    child: GestureDetector(
                      onTap: () => _clickButton(),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'SHTEYD',
                              style: GoogleFonts.montserrat(
                                fontSize: 150,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: GoogleFonts.montserrat(
                                fontSize: 150,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.5,
                  child: FittedBox(
                    child: Text(
                      'Hello, dear friend!',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: FittedBox(
                    child: Text(
                      'You\'re here for a reason',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  child: FittedBox(
                    child: Text(
                      'Maybe, these links can help you',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SocialMediaButton(
                  text: 'VK',
                  url: 'https://vk.me/Shteyd',
                ),
                const SizedBox(height: 10),
                const SocialMediaButton(
                  text: 'TG',
                  url: 'https://t.me/Shteyd',
                ),
                const SizedBox(height: 10),
                const SocialMediaButton(
                  text: 'Git',
                  url: 'https://github.com/Shteyd',
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
