part of '../desktop.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      children: [
        BaseContainer(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: [
                    const CustomAppBar(),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Hi! I Am',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 52,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(width: 60),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.blue,
                                    ),
                                    child: Text(
                                      'MOBILE',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Nikita Gorobets',
                                style: GoogleFonts.montserrat(
                                  fontSize: 52,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 50),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset("assets/me.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 5,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    '@Shteyd (c) 2021-2022',
                    style: GoogleFonts.openSans(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
