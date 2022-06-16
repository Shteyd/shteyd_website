part of '../desktop.dart';

class SkillsAndExperiencePage extends StatelessWidget {
  const SkillsAndExperiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      children: [
        BaseContainer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 25),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'A little bit about my ',
                        style: GoogleFonts.montserrat(
                          fontSize: 52,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'skills',
                        style: GoogleFonts.montserrat(
                          fontSize: 52,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ':',
                        style: GoogleFonts.montserrat(
                          fontSize: 52,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Programming languages',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Expanded(
                              child: Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: const [
                                  SkillTemplate(
                                    text: 'Dart',
                                    hexColors: [0x0082C8, 0x00D2B8],
                                  ),
                                  SkillTemplate(
                                    text: 'GoLang',
                                    hexColors: [0x00ACD7, 0x00ACD7],
                                  ),
                                  SkillTemplate(
                                    text: 'Python',
                                    hexColors: [0x3771A2, 0xFFD141],
                                  ),
                                  SkillTemplate(
                                    text: 'Java',
                                    hexColors: [0xE76F00, 0x5382A1],
                                  ),
                                  SkillTemplate(
                                    text: 'Kotlin',
                                    hexColors: [0xF1730F, 0x4D60D8],
                                  ),
                                  SkillTemplate(
                                    text: 'C Sharp',
                                    hexColors: [0x9A4F96, 0x68207B],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const CustomVerticalDivider(),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Frameworks',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Expanded(
                              child: Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: const [
                                  SkillTemplate(
                                    text: 'Flutter',
                                    hexColors: [0x54C5F8, 0x01579B],
                                  ),
                                  SkillTemplate(
                                    text: 'Gin',
                                    hexColors: [0xF5D439, 0x018FCD],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const CustomVerticalDivider(),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Databases',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Expanded(
                              child: Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: const [
                                  SkillTemplate(
                                    text: 'Hive',
                                    hexColors: [0x7F49DD, 0x00A3FF, 0x17F9DA],
                                  ),
                                  SkillTemplate(
                                    text: 'Sembast',
                                    hexColors: [0x4CB050, 0x8BC24A],
                                  ),
                                  SkillTemplate(
                                    text: 'SQLite',
                                    hexColors: [0x0F80CC, 0x8DD2F3],
                                  ),
                                  SkillTemplate(
                                    text: 'MySQL',
                                    hexColors: [0x007D7D, 0xE97100],
                                  ),
                                  SkillTemplate(
                                    text: 'PostgreSQL',
                                    hexColors: [0x336791, 0x336791],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const CustomVerticalDivider(),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Other:',
                              style: GoogleFonts.montserrat(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Expanded(
                              child: Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: const [
                                  SkillTemplate(
                                    text: 'Docker',
                                    hexColors: [0x129FDB, 0x006FB6],
                                  ),
                                  SkillTemplate(
                                    text: 'Swagger',
                                    hexColors: [0x49A32B, 0x49A32B],
                                  ),
                                  SkillTemplate(
                                    text: 'Figma',
                                    hexColors: [
                                      0x0ACF83,
                                      0xA259FF,
                                      0xF24E1E,
                                      0xFF7262,
                                      0x1ABCFE,
                                    ],
                                  ),
                                  SkillTemplate(
                                    text: 'BLoC',
                                    hexColors: [0x0084C1, 0x00D3B9, 0x82EDDF],
                                  ),
                                  SkillTemplate(
                                    text: 'RxDart',
                                    hexColors: [0xED168F, 0x512C87],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
        BaseContainer(),
      ],
    );
  }
}

class SkillTemplate extends StatelessWidget {
  const SkillTemplate({
    Key? key,
    required this.text,
    required this.hexColors,
  }) : super(key: key);

  final String text;
  final List<int> hexColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: List.generate(
            hexColors.length,
            (index) => Color(0xFF000000 + hexColors[index]),
          ),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
