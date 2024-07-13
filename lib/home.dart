import 'package:armor/armorbot.dart';
import 'package:armor/faq.dart';
import 'package:armor/games.dart';
import 'package:armor/story.dart';
import 'package:armor/info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var keyInfo = GlobalKey();
  var keyBot = GlobalKey();
  var keyCommunity = GlobalKey();
  var keyTechTalks = GlobalKey();
  var keyHelpline = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      // drawer: const DrawerWidget(),
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 153, 201, 255),
      body: SingleChildScrollView(
        child: Column(
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
                      padding: EdgeInsets.fromLTRB(
                          7 * fem, 2 * fem, 0 * fem, 2 * fem),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          // child: const Icon(
                          //   Icons.sort_rounded,
                          //   size: 35,
                          // ),
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
                            'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/image_1.png?v=1715619085715')),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
              child: Container(
                height: 130 * fem,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(112, 19, 0, 82),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/bg.png?v=1715776520785',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5 * fem),
                            child: Center(
                              child: Text(
                                'Get Information, Chatbot and Community about Cyber Security on ARMOR!',
                                style: GoogleFonts.poppins(
                                  fontSize: 13 * ffem,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  shadows: [
                                    const BoxShadow(
                                      color: Color.fromARGB(112, 19, 0, 82),
                                      offset: Offset(0, 0),
                                      blurRadius: 15,
                                      spreadRadius: 20,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(2 * fem),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      Scrollable.ensureVisible(
                                          keyInfo.currentContext!);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        "Learnings",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 7 * ffem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2 * fem),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                        (states) =>
                                            Color.fromARGB(255, 12, 0, 43),
                                      ),
                                    ),
                                    onPressed: () {
                                      Scrollable.ensureVisible(
                                          keyBot.currentContext!);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        "Armor Bot",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 7 * ffem,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.all(2 * fem),
                                //   child: ElevatedButton(
                                //     style: ButtonStyle(
                                //       backgroundColor:
                                //           MaterialStateColor.resolveWith(
                                //         (states) => Colors.white,
                                //       ),
                                //     ),
                                //     onPressed: () {
                                //       Scrollable.ensureVisible(
                                //         keyCommunity.currentContext!,
                                //       );
                                //     },
                                //     child: Padding(
                                //       padding: const EdgeInsets.all(8),
                                //       child: Text(
                                //         "Community",
                                //         style: GoogleFonts.urbanist(
                                //           fontSize: 7 * ffem,
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Padding(
                                  padding: EdgeInsets.all(2 * fem),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      Scrollable.ensureVisible(
                                          keyTechTalks.currentContext!);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        "Tech Talks",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 7 * ffem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2 * fem),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                        (states) =>
                                            Color.fromARGB(255, 12, 0, 43),
                                      ),
                                    ),
                                    onPressed: () {
                                      Scrollable.ensureVisible(
                                        keyCommunity.currentContext!,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        "Community",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 7 * ffem,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2 * fem),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateColor.resolveWith(
                                        (states) => Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      Scrollable.ensureVisible(
                                          keyHelpline.currentContext!);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        "Helpline",
                                        style: GoogleFonts.urbanist(
                                          fontSize: 7 * ffem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5 * fem, 5 * fem, 5 * fem, 0),
              child: Container(
                key: keyInfo,
                height: 111 * fem,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
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
                      padding: EdgeInsets.all(5 * fem),
                      child: Container(
                        height: 15 * fem,
                        width: 50 * fem,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 153, 201, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Learnings:",
                            style: GoogleFonts.urbanist(
                              fontSize: 7 * ffem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Information(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/info.png?v=1715776710799'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Story(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/stories.png?v=1715776709308'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Games(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/games.png?v=1715776713511'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const (),
                          //     ),
                          //   );
                          // },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/aimodel.png?v=1715776716506'),
                              ),
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
              padding: EdgeInsets.fromLTRB(5 * fem, 5 * fem, 5 * fem, 0),
              child: Container(
                key: keyBot,
                height: 140 * fem,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
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
                      padding: EdgeInsets.all(5 * fem),
                      child: Container(
                        height: 15 * fem,
                        width: 50 * fem,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 153, 201, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Armor Bot:",
                            style: GoogleFonts.urbanist(
                              fontSize: 7 * ffem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                            ),
                            height: 110 * fem,
                            width: 80 * fem,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              child: Image.network(
                                'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/armorbot.png?v=1715777640898',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ArmorBot(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                color: Colors.lightBlue,
                              ),
                              height: 110 * fem,
                              width: 255 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                  'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/armorbotposter.png?v=1715778028206',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(5 * fem, 5 * fem, 5 * fem, 5 * fem),
            //   child: Container(
            //     key: keyCommunity,
            //     height: 140 * fem,
            //     width: double.infinity,
            //     decoration: const BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(
            //           15,
            //         ),
            //       ),
            //     ),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.all(5 * fem),
            //           child: Container(
            //             height: 15 * fem,
            //             width: 50 * fem,
            //             decoration: const BoxDecoration(
            //               color: Color.fromARGB(255, 153, 201, 255),
            //               borderRadius: BorderRadius.all(
            //                 Radius.circular(
            //                   20,
            //                 ),
            //               ),
            //             ),
            //             child: Center(
            //               child: Text(
            //                 "Community:",
            //                 style: GoogleFonts.urbanist(
            //                   fontSize: 7 * ffem,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Row(
            //           children: [
            //             Padding(
            //               padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
            //               child: InkWell(
            //                 onTap: () {
            //                   // ignore: deprecated_member_use
            //                   launch(
            //                     'https://discord.com/invite/W3CtPqdH',
            //                   );
            //                 },
            //                 child: Container(
            //                   decoration: const BoxDecoration(
            //                     borderRadius: BorderRadius.all(
            //                       Radius.circular(
            //                         15,
            //                       ),
            //                     ),
            //                     color: Colors.lightBlue,
            //                   ),
            //                   height: 110 * fem,
            //                   width: 255 * fem,
            //                   child: ClipRRect(
            //                     borderRadius: const BorderRadius.all(
            //                       Radius.circular(
            //                         15,
            //                       ),
            //                     ),
            //                     child: Image.network(
            //                       'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/communityposters.png?v=1715779696688',
            //                       fit: BoxFit.cover,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             Padding(
            //               padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
            //               child: Container(
            //                 decoration: const BoxDecoration(
            //                   color: Colors.lightBlue,
            //                   borderRadius: BorderRadius.all(
            //                     Radius.circular(
            //                       15,
            //                     ),
            //                   ),
            //                 ),
            //                 height: 110 * fem,
            //                 width: 80 * fem,
            //                 child: ClipRRect(
            //                   borderRadius: const BorderRadius.all(
            //                     Radius.circular(
            //                       15,
            //                     ),
            //                   ),
            //                   child: Image.network(
            //                     'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/community.png?v=1715779144921',
            //                     fit: BoxFit.cover,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(5 * fem, 5 * fem, 5 * fem, 0),
              child: Container(
                key: keyTechTalks,
                height: 111 * fem,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
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
                      padding: EdgeInsets.all(5 * fem),
                      child: Container(
                        height: 15 * fem,
                        width: 50 * fem,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 153, 201, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Tech Talks:",
                            style: GoogleFonts.urbanist(
                              fontSize: 7 * ffem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launch(
                              'https://savvycyberkids.org/tech-talk/savvy-cyber-kids-news-feed/',
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/news.png?v=1715879451061'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launch(
                              'https://savvycyberkids.org/tech-talk/blog/',
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/blogs.png?v=1715879443605'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launch(
                              'https://savvycyberkids.org/tech-talk/featured-conversation-starters/',
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/converse.png?v=1715879441468'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FAQs(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/faqs.png?v=1715879456587'),
                              ),
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
                key: keyCommunity,
                height: 140 * fem,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
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
                      padding: EdgeInsets.all(5 * fem),
                      child: Container(
                        height: 15 * fem,
                        width: 50 * fem,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 153, 201, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Community:",
                            style: GoogleFonts.urbanist(
                              fontSize: 7 * ffem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                          child: InkWell(
                            onTap: () {
                              // ignore: deprecated_member_use
                              launch(
                                'https://discord.com/invite/W3CtPqdH',
                              );
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                color: Colors.lightBlue,
                              ),
                              height: 110 * fem,
                              width: 255 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                  'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/communityposters.png?v=1715779696688',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                            ),
                            height: 110 * fem,
                            width: 80 * fem,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              child: Image.network(
                                'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/community.png?v=1715779144921',
                                fit: BoxFit.cover,
                              ),
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
              padding: EdgeInsets.fromLTRB(5 * fem, 5 * fem, 5 * fem, 0),
              child: Container(
                key: keyHelpline,
                height: 111 * fem,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
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
                      padding: EdgeInsets.all(5 * fem),
                      child: Container(
                        height: 15 * fem,
                        width: 50 * fem,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 153, 201, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Helpline:",
                            style: GoogleFonts.urbanist(
                              fontSize: 7 * ffem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launch(
                              'https://cybercrime.gov.in/Webform/Crime_NodalGrivanceList.aspx',
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/emergence.png?v=1716835772068'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launch(
                              'https://prowritersins.com/services/risk-management/how-to-deal-with-cyber-attacks/',
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/deal.png?v=1716835773208'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launch(
                              'https://cybercrime.gov.in/Webform/crmcondi.aspx',
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/report.png?v=1716835798844'),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ArmorBot(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                            child: Container(
                              decoration: const BoxDecoration(
                                // color: Colors.lightBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              height: 80 * fem,
                              width: 80 * fem,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    15,
                                  ),
                                ),
                                child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/support.png?v=1716835826849'),
                              ),
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
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 50,
              ),
            ),
            Container(
              height: 20 * fem,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    15,
                  ),
                  topLeft: Radius.circular(
                    15,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  "©️ Armor 2024",
                  style: GoogleFonts.urbanist(
                    fontSize: 5.5 * ffem,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
