import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 153, 201, 255),
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(7 * fem),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  height: 17 * fem,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.fromLTRB(7 * fem, 2 * fem, 0 * fem, 2 * fem),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 7 * fem,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 9.5 * fem, 0, 0),
                  child: SizedBox(
                    height: 13 * fem,
                    child: Image.network(
                      'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/image_1.png?v=1715619085715',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   child: Padding(
          //     padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
          //     child: Container(
          //       decoration: const BoxDecoration(
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(
          //             15,
          //           ),
          //         ),
          //         color: Colors.white,
          //       ),
          //       child: Padding(
          //         padding: EdgeInsets.all(3 * fem),
          //         child: Text(
          //           "Stories: ",
          //           style: GoogleFonts.manrope(
          //             fontSize: 7 * ffem,
          //             color: Colors.black,
          //           ),
          //           textAlign: TextAlign.left,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.fromLTRB(5 * fem, 5 * fem, 5 * fem, 5 * fem),
            child: Container(
              height: 110 * fem,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 153, 201, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(3 * fem),
                        child: Text(
                          "Stories: ",
                          style: GoogleFonts.manrope(
                            fontSize: 7 * ffem,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10 * ffem,
                  ),
                  Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                        child: Container(
                          height: 80 * fem,
                          width: 105 * fem,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    launch(
                                      'https://www.youtube.com/watch?v=EioFE4HailU',
                                    );
                                  },
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/story1.png?v=1715953242576',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- Mystery of Cyber Friend -",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      fontSize: 7 * ffem,
                                      color: Colors.brown[900],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                        child: Container(
                          height: 80 * fem,
                          width: 105 * fem,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    launch(
                                      'https://www.youtube.com/watch?v=q9NNMWBCPHM/',
                                    );
                                  },
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/story2.png?v=1715953239060',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- Cyber Safety -",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      fontSize: 7 * ffem,
                                      color: Colors.brown[900],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                        child: Container(
                          height: 80 * fem,
                          width: 105 * fem,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // ignore: deprecated_member_use
                                    launch(
                                      'https://www.youtube.com/watch?v=8tR9P4QX82I',
                                    );
                                  },
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/story3.png?v=1715953341671',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- WCF Cyber Security -",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      fontSize: 7 * ffem,
                                      color: Colors.brown[900],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5 * fem, 5 * fem, 5 * fem, 5 * fem),
            child: Container(
              height: 80 * fem,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 153, 201, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                        child: Container(
                          height: 80 * fem,
                          width: 105 * fem,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    launch(
                                      'https://www.youtube.com/watch?si=S4StgMCDxlc4vcZC&v=JSx7MBIOnW4&feature=youtu.be',
                                    );
                                  },
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/story4.png?v=1715953810909',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- Cyber Security for Children -",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      fontSize: 7 * ffem,
                                      color: Colors.brown[900],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                        child: Container(
                          height: 80 * fem,
                          width: 105 * fem,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    launch(
                                      'https://www.youtube.com/watch?v=nVEyG3C-Mqw',
                                    );
                                  },
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/story5.png?v=1715953902144',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- Cyber Security for kids-",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      fontSize: 7 * ffem,
                                      color: Colors.brown[900],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                        child: Container(
                          height: 80 * fem,
                          width: 105 * fem,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // ignore: deprecated_member_use
                                    launch(
                                      'https://www.youtube.com/watch?v=yiKeLOKc1tw',
                                    );
                                  },
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/story6.png?v=1715953972981',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "- Online Privacy for kids -",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.urbanist(
                                      fontSize: 7 * ffem,
                                      color: Colors.brown[900],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
