import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
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
          Padding(
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
            child: Container(
              height: 100 * fem,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "What is Cyber Space?",
                              style: GoogleFonts.manrope(
                                fontSize: 7 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1180,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Cyberspace refers to the virtual environment created by interconnected computer systems, networks, and digital devices. It encompasses the entirety of the internet, including websites, online platforms, communication networks, and digital content. In cyberspace, users can engage in various activities such as communication, commerce, entertainment, information retrieval, and more. It is a dynamic and ever-expanding realm where individuals and organizations interact, exchange data, and conduct business in a digital format. In simpler language, Cyberspace is anything that has to do with the Internet. We use the Internet to communicate and stay connected to our friends and family. We play video games, download music, and watch TV shows and movies after homework is done. Grownups do things like banking, shopping, and other important everyday activities online too.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 305,
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      20,
                                    ),
                                  ),
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/cyberspace.png?v=1715830378949',
                                    fit: BoxFit.cover,
                                  )),
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
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
            child: Container(
              height: 90 * fem,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "Why do we need to protect CyberSpace?",
                              style: GoogleFonts.manrope(
                                fontSize: 7 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 275,
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                                child: Image.network(
                                  'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/cyberspace2.png?v=1715831947026',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1180,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Crimes that occur in the physical world, such as theft, also transpire on the Internet. Similar to the precaution of looking both ways before crossing the street, exercising caution when navigating the online world is essential. By enhancing online safety by educating individuals on identifying and mitigating internet-related threats we can empower users to recognize potential dangers and take proactive measures to safeguard themselves, their families, and the broader community. Often, we may underestimate the impact of our online actions, which can inadvertently harm not only ourselves but also our loved ones and even our nation. By educating ourselves about online risks and adopting protective measures, we take the pivotal first step toward fostering a safer digital environment for all.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
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
          Padding(
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
            child: Container(
              height: 125 * fem,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "Kids Lead Digital Lives",
                              style: GoogleFonts.manrope(
                                fontSize: 7 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1180,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Thanks to the sudden rise in remote schooling, it’s become harder than ever for parents to manage their children’s digital activity. Kids are online more frequently than many parents would like. And most parents can’t always find the time to keep an eye on the children’s digital activity. It’s a stressful time for parents who want to keep their kids safe. Recent researches shows the enormity of the challenge. Here’s what’s going on with today’s youngsters: Kids ages 8-18 spend 7 hours and 38 minutes per day online, 73% of teenagers can’t imagine life without a smartphone, and half of them take their phone to bed, 44% of kids aged 8 to 16 are online constantly, with a preference for entertainment and social media apps, 40% of children reveal sensitive information online, including their home address, A third of young people lie about their age online, 37% of kids have experienced online dangers, including bullying, financial threats, and inappropriate content. As a parent, you can’t watch every single thing that your kid does on their smartphone and your laptop. Even if you could, should you? Technology will play an important role in their lives from childhood into adulthood. These early years are a chance for them a chance to develop the skills that they need to stay safe online. The ideal approach is to educate and empower your kids so that they learn how to keep themselves safe.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 450,
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                                child: Image.network(
                                  'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/kidsdigital.png?v=1715833301825',
                                  fit: BoxFit.cover,
                                ),
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
          Padding(
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
            child: Container(
              height: 250 * fem,
              // width: double.infinity,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "Some Common Online Issues faced by Kids",
                              style: GoogleFonts.manrope(
                                fontSize: 7 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
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
                                    (states) =>
                                        const Color.fromARGB(255, 12, 0, 43),
                                  ),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    "Cyber Predators and Bullies",
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
                                    (states) =>
                                        const Color.fromARGB(255, 12, 0, 43),
                                  ),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    "Identity Theft",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 7 * ffem,
                                      color: Colors.white,
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
                    child: Container(
                      height: 100 * fem,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
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
                                      "Cyber Predators and Bullies",
                                      style: GoogleFonts.manrope(
                                        fontSize: 7 * ffem,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 1000,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      3 * fem, 3 * fem, 0, 0),
                                  child: Container(
                                    width: 1000,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                      color: Colors.lightBlue,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3 * fem),
                                      child: Text(
                                        "Cyber predators are people who search online for other people in order to use, control, or harm them in some way. Cyberbullying is the electronic posting of mean-spirited messages about a person, often anonymously. Cyber Tips for Kids: Keep your personal information private; avoid sharing your name, address, telephone number, birthday, passwords, and the name of your school when using the Internet. Think twice before you post or say anything online; once it is in cyberspace, it’s out there forever. Treat others like you want to be treated. Speak up. If you see something inappropriate, let the website know and tell an adult you trust. Don’t stand for bullying—online or off.",
                                        style: GoogleFonts.manrope(
                                          fontSize: 5 * ffem,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 305,
                                width: 450,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      3 * fem, 3 * fem, 0, 0),
                                  child: Container(
                                    width: 1000,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3 * fem),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Image.network(
                                          'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/bully.png?v=1715835621588',
                                          fit: BoxFit.cover,
                                        ),
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
                    child: Container(
                      height: 125 * fem,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
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
                                      "Identity Theft",
                                      style: GoogleFonts.manrope(
                                        fontSize: 7 * ffem,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 365,
                                width: 450,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      3 * fem, 3 * fem, 0, 0),
                                  child: Container(
                                    width: 1000,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3 * fem),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Image.network(
                                          'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/identitytheft.png?v=1715835823337',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1000,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      3 * fem, 3 * fem, 0, 0),
                                  child: Container(
                                    width: 1000,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                      color: Colors.lightBlue,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3 * fem),
                                      child: Text(
                                        "Identity theft is the illegal use of someone else's personal information to steal money or credit. Cyber Tips for Kids: If you have your own email account, let your parents know if you ever receive an email that asks for your personal information. Some emails look official, as if they were sent from a club or school, but they could be a trick to get your personal information. Fake emails usually seem urgent, and ask you to respond with your private information. Choose a screen name or email address that isn't your real name to protect your identity. For instance, instead of 'Jack Smith', why not choose 'Sk8boardKing75?' Create strong passwords with eight characters or more that use a combination of letters, numbers, and symbols. Don’t share your passwords with anyone. Think before you click – don’t open emails from strangers and don’t click on links for unfamiliar sites. Use and check your privacy settings on social networking sites like Facebook and Twitter.",
                                        style: GoogleFonts.manrope(
                                          fontSize: 5 * ffem,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.left,
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
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
            child: Container(
              height: 275 * fem,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "SOLUTION: Educate yourself so you can help protect your kids and discuss with them",
                              style: GoogleFonts.manrope(
                                fontSize: 7 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "If you want to keep your kids safe, you first must understand the dangers they face when they go online. When you’re fully educated, you can help steer them away from risk, so they can have fun while staying safe. There are lots of great resources online that will explain the main threats, even if you’re not a natural techie.In general, there are three categories of threat that children face when they go online:",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 185,
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      20,
                                    ),
                                  ),
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/cyberspace.png?v=1715830378949',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "1. Strangers: Predators do lurk on sites that attract children, such as social media and online games. These predators will often pretend to be children themselves, a technique known as Catfishing. There are also hackers and cybercriminals who will target anyone with poor security, whether they’re a child or an adult. They may also try to trick the child into sharing passwords or payment details.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 185,
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      20,
                                    ),
                                  ),
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/stranger.png?v=1715840576230',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "2. Peers: Your child may experience bullying or harassment from kids they know. This can often happen on private chats in social media and messaging apps. Sometimes, other children may share private information about your child, which can cause great distress. If this data is sexual in nature, such as intimate pictures, this might constitute a criminal offense.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 185,
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      20,
                                    ),
                                  ),
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/peer.png?v=1715840390788',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "3. Self: Unsupervised children are themselves a risk online. They often click buttons or install software without understanding the consequences of their actions. They might also publicly post private information, such as their date of birth or address.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 160,
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      20,
                                    ),
                                  ),
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/self.png?v=1715840448509',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Some of these are social threats, which means that they involve extortion or manipulation. Often, someone will gain your child’s trust and then take advantage of that trust. To safeguard against these threats, your child will need to know how to have safe interactions with other people. Others are digital threats, which means that someone uses technology to access your data. This could involve malware (malicious software that steals your data) or phishing (tricking someone into visiting a fake website.) To protect against this type of danger, you need to encourage proper internet usage and install robust antivirus software.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      20,
                                    ),
                                  ),
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/cyberspace.png?v=1715830378949',
                                    fit: BoxFit.cover,
                                  )),
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
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
            child: Container(
              height: 625 * fem,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "5 essential tips for talking to kids about cybersecurity",
                              style: GoogleFonts.manrope(
                                fontSize: 7 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Every child is unique. They all want different things from their online experience, and they all deal with danger in different ways. There’s no universally correct way to talk to your children about online safety. Instead, you have to find ways to engage in a conversation with them and help them understand what to do. Here are a few suggestions to help you get started.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 195,
                        width: 275,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                                child: Image.network(
                                  'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/kidsdigital.png?v=1715833301825',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "1. Use child-friendly educational resources",
                              style: GoogleFonts.manrope(
                                fontSize: 5 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1475,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Conveying the importance of internet safety to kids can be quite challenging, especially with younger ones who may struggle to grasp complex concepts. Parents around the world encounter this issue frequently. One effective strategy is to utilize storytelling as a tool to illustrate fundamental cybersecurity principles. Picture a series of engaging tales designed to impart essential lessons on online safety. These stories could feature relatable characters navigating the digital realm, encountering scenarios that mirror real-life internet risks. For instance, they might learn about the significance of privacy when a character faces a dilemma involving sharing personal information with strangers online. Similarly, the importance of choosing strong passwords could be illustrated through an adventure where characters must unlock a virtual treasure chest by cracking a secret code. Meanwhile, addressing cyberbullying could be done through a narrative where a character confronts online harassment and learns how to seek help and support. By crafting stories that strike a balance between education and entertainment, children can absorb crucial cybersecurity concepts without feeling overwhelmed or anxious. Whether presented through written tales or animated adventures, these stories cater to the child's interests and learning preferences. Armed with this knowledge, children can navigate the online world confidently and safely. Ultimately, empowering them with these foundational skills lays the groundwork for responsible digital citizenship and fosters a safer online environment for all.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "2. Set up some basic internet rules",
                              style: GoogleFonts.manrope(
                                fontSize: 5 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1475,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Navigating the vast landscape of the internet can be daunting, especially for kids. Establishing a set of foundational rules can provide a sense of structure and safety in this digital world. Begin by sitting down with your child to discuss and agree upon a few essential guidelines for their internet usage. For younger children, simplicity is key. Consider rules like obtaining permission from an adult before going online, limiting screen time to 30 minutes daily, and restricting usage to approved apps with safety features, such as YouTube with Safe Search enabled or a filtered web browser. Additionally, emphasize the importance of seeking permission before downloading or installing any new apps or games.As your child grows older, you can gradually introduce more nuanced rules to reflect their increasing independence and understanding of online risks. For instance, emphasize the importance of never sharing personal information like their real name and address online, refraining from authorizing in-app payments without permission, and exercising caution when selecting and downloading apps, prioritizing quality and safety.Furthermore, instill in them the importance of safeguarding their privacy and avoiding sharing intimate pictures or sensitive information online. Encourage open communication by reassuring them that they can always seek guidance from a trusted adult if they encounter any uncomfortable situations or pressure online. As your child transitions into their teenage years, collaborate with them to develop rules that support their evolving digital life while still ensuring their safety. Flexibility and mutual understanding are key as you navigate this journey together. Remember, these rules serve as guidelines, and it's essential to tailor them to suit your child's unique needs and circumstances. Regularly revisit and reinforce these rules through refresher sessions to ensure they remain relevant and effective in promoting a safe and positive online experience for your child.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "3. Focus on empowerment, not fear",
                              style: GoogleFonts.manrope(
                                fontSize: 5 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1475,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Navigating the digital realm can seem daunting for both kids and parents, but it doesn't have to be overwhelming. Rather than dwelling on potential dangers, focus on empowering children with the skills they need to safeguard themselves online. Start by creating a checklist in collaboration with your children to ensure they're equipped with essential knowledge and strategies. This checklist could encompass various key points: Knowing how to handle negative interactions online, Understanding what information is safe to share and what should remain private offline, Recognizing the importance of only communicating with known friends and avoiding interactions with strangers, Learning how to distinguish between legitimate and fraudulent websites, Understanding the risks associated with accessing harmful websites, Mastering the creation of strong passwords and utilizing two-factor authentication on devices, Acknowledging the necessity of seeking parental permission before making any online transactions, Exercising caution when sharing personal information or images on the internet, Feeling comfortable seeking help from a trusted adult when unsure about online situations. These cybersecurity skills are valuable not just for children but also for adults. By instilling this proactive approach from an early age, you're laying the groundwork for your children to grow into savvy, safety-conscious adults. By nurturing these skills and fostering open communication, you're equipping your children with the tools they need to navigate the digital landscape confidently and responsibly. This proactive approach shifts the focus from fear to empowerment, fostering a positive and secure online experience for the whole family.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "4. Create a trusting, respectful environment",
                              style: GoogleFonts.manrope(
                                fontSize: 5 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1475,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "In an ideal scenario, children would always feel comfortable turning to their parents for guidance on online security issues. However, this isn't always the case. There are times when children may hesitate to seek help because they fear getting into trouble, especially if they've breached online behavior rules and fallen victim to scams like phishing or catfishing. In such situations, children face a dilemma: seeking advice might mean admitting to rule-breaking and facing consequences. To address this, it's crucial to reassure children that their safety is the top priority. Let them know that, regardless of the situation, you'll always support and assist them. Emphasize the importance of learning from mistakes, focusing on constructive lessons rather than blame. Children may also worry about disappointing or misunderstanding their parents, particularly in cases of harassment or bullying, whether in the physical or digital realm. It's essential to create an environment where children feel comfortable expressing their feelings and concerns. Even seemingly trivial issues should be taken seriously, as they might be significant to the child. Above all, parents must lead by example. Demonstrating safe and responsible online behavior sets a powerful precedent for children to follow. Additionally, being mindful of screen time and prioritizing quality interactions when around children fosters a healthy digital balance within the family. By fostering open communication, offering unwavering support, and setting positive examples, parents can cultivate a trusting and secure environment where children feel empowered to navigate the online world confidently and responsibly.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "5. Use the right tools to help keep them safe",
                              style: GoogleFonts.manrope(
                                fontSize: 5 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1475,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Online security is a significant challenge for both adults and children due to the multitude of sophisticated threats in the digital landscape. To stay safe, every device in your household should be equipped with essential tools like anti-virus software, which protects against viruses, trojans, spyware, and ransomware by running in the background. Anti-phishing protection is crucial to guard against deceptive scams that lure users into clicking fraudulent links. Webcam protection is necessary to prevent unauthorized access and spying, especially with the increase in virtual learning and remote work. Content blockers help minimize exposure to unsafe online content, keeping children away from potentially harmful websites. VPNs (Virtual Private Networks) are vital for encrypting data, particularly on public Wi-Fi networks, ensuring secure data transmission. Password management tools generate and securely store strong passwords, making it easier for children to follow best practices for password security. Utilizing these tools can significantly mitigate the risks of online threats and enhance overall digital safety for your household.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
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
          Padding(
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 0),
            child: Container(
              height: 150 * fem,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              "How to safeguard your kids’ cybersecurity",
                              style: GoogleFonts.manrope(
                                fontSize: 7 * ffem,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 1200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              color: Colors.lightBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: Text(
                                "Being a parent is an immense responsibility, requiring a balance between nurturing your children's exploration and growth and ensuring their safety, particularly in the digital realm. Watching your kids engage with electronic devices evokes a mix of excitement for the learning opportunities and apprehension about the risks they may encounter. To facilitate productive conversations about cybersecurity with your children, consider implementing essential tools such as GPS tracking, which allows you to monitor their locations in real-time and receive notifications if they venture outside designated safe zones. Screen time controls help manage your child's device usage by setting limits on their time spent on games and social media, and enforcing device shutdown at bedtime to ensure adequate rest. Content filters safeguard your children from exposure to inappropriate content online by hiding unsuitable material in web searches and on platforms like YouTube, with restriction levels tailored to their age and maturity. By incorporating these tools into your parenting approach, you enhance your children's safety and empower them to develop skills necessary to take charge of their own cybersecurity. These measures foster a supportive environment where children can explore the digital world with confidence, knowing their parents are actively engaged in their online well-being.",
                                style: GoogleFonts.manrope(
                                  fontSize: 5 * ffem,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 430,
                        width: 280,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(3 * fem, 3 * fem, 0, 0),
                          child: Container(
                            width: 1000,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3 * fem),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      20,
                                    ),
                                  ),
                                  child: Image.network(
                                    'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/cyberspace.png?v=1715830378949',
                                    fit: BoxFit.cover,
                                  )),
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
        ],
      ),
    );
  }
}
