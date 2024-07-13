import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;

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
          Container(
            padding: const EdgeInsets.all(15),
            color: Colors.white,
            width: double.infinity,
            child: const Text(
              "Frequently Asked Questions",
              style: TextStyle(
                fontFamily: 'Comfortaa-Regular.ttf',
                color: Colors.black,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q1. What is harassment?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    'Harassment (also known as cyber harassment) is the use of email, instant messaging, and websites to bully or harass an individual or group through personal attacks. Harassment can be in the form of derogatory or insulting comments made in chat rooms, e-mail, block postings or comments on social networking sites. Those responsible for harassment are often difficult to track as the perpetrator is often anonymous. Harassment is very difficult to verify because we often do not understand the history or context of the situation. For purposes of this FAQ, consider harassment to include communication between adults.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q2. What is cyberbullying? ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    'Like bullying in person, cyberbullying (also known as online bullying) is repeated, deliberate behavior intended to tease, demean, or harass someone in a less powerful position. By contrast, cyberbullying uses electronic media and information technology as the means for carrying out the harassment. Since cyberbullying is online, it exposes the victim to harm 24 hours a day, can be made anonymously, and can potentially be broadcast to a far wider audience than in-person attacks. Cyberbullies can use any type of Internet-connected device through web services like text and instant messaging, games, or social media such as Facebook and Tumblr.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q3. What are some examples of bullying?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Bullying can take various forms, each causing significant harm to the victim. Verbal bullying, characterized by saying or writing mean things, includes behaviors such as teasing, name-calling, making inappropriate sexual comments, taunting, and threatening to cause harm. Social bullying, also known as relational bullying, involves actions that damage someone's reputation or relationships, such as intentionally excluding someone, instructing others not to befriend them, spreading rumors, and publicly humiliating them. Physical bullying entails direct harm to a person's body or possessions and includes hitting, kicking, pinching, spitting, tripping, pushing, taking or breaking belongings, and making mean or rude hand gestures. Each type of bullying inflicts emotional, social, or physical pain, highlighting the need for comprehensive strategies to address and prevent bullying in all its forms.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q4. How is cyberbullying different from in-person bullying?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Cyberbullying is a pervasive issue that can occur 24/7, often invading the victim's home, which should be a safe space. Unlike traditional bullying, cyberbullying can be anonymous, allowing perpetrators to hide their identities and potentially broadcast their harmful actions to a wider audience. The nature of online posts means they can be challenging to remove and may persist indefinitely, causing long-term distress. The lack of face-to-face confrontation makes it easier for cyberbullies to harass others without immediate repercussions. These characteristics make cyberbullying a particularly insidious form of harassment that requires vigilant attention and effective intervention strategies.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q5. How can I prevent cyberbullying?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Despite the invisibility of cyberbullies and their victims, cyberbullying causes real and significant problems. It's crucial to remember that if you wouldn't say something in person, you shouldn't say it online, write it, or forward it. Refusing to pass along cyberbullying messages, telling friends to stop engaging in cyberbullying, blocking communication with cyberbullies, and reporting incidents to a trusted adult are essential steps in combating this issue. Additionally, collaborating with other students, teachers, and school administrators to establish rules against cyberbullying and raising community awareness through assemblies and informational fliers can help create a safer environment for everyone.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q6. Should I notify parents/guardians about this issue?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Definitely. The sooner the better. Don't wait until it escalates.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q7. What can I do if my child is involved in online bullying?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "When addressing bullying situations, it's essential to be supportive and responsive to all kids involved, whether they are being bullied or are bullying others. Listen carefully to understand the full story, as the situation may be complex, with kids potentially playing multiple roles. Create a collaborative plan based on the child's needs and seek help from counselors or experts. For kids being bullied online, emphasize that no one deserves to be bullied, advise against responding or retaliating, save evidence, report the abuse, and contact the police if there is a physical threat. For kids who are bullying online, understand the underlying causes without excusing the behavior, support the child by focusing on the behavior rather than labeling the child, and discuss ways to make amends, such as offering an apology or performing a good deed for the person they bullied.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  "Q8. What if I'm not comfortable notifying parents/guardians? Who else can I contact?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "If you are dealing with bullying, reach out to friends, neighbors, and trusted adults for support. If you don't have anyone to confide in, you can use resources like the HelpChat Line at Stomp Out Bullying (http://www.stompoutbullying.org/index.php/information-and-resources/helpchat-line/). For those experiencing emotional distress or a suicidal crisis, contact your local suicide prevention lifeline, such as the one available at the Suicide Prevention Lifeline (http://www.suicidepreventionlifeline.org/gethelp/bullying.aspx), or seek assistance from your school or family counselor.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q9 : Do You Think You Have Something Valuable To Steal?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Yes! More than 1 million children fall victim to identity theft or fraud each year, with two-thirds of these victims being 7 years old or younger. Alarmingly, six in ten child victims personally know the perpetrator, who is often a family member. A child's identity is particularly valuable to cyber criminals because children typically do not have bank accounts or financial histories, providing a 'blank slate' that allows fraudulent accounts to be opened without drawing much attention.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q10: What Are The Chances You Will Get Hacked?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Dixie D’Amelio’s account was hacked and deleted. She had over 46 million followers on TikTok! Following the hack she wrote: “I guess dixie123 was a bad password.” I don’t know if this was her actual password or she was just kidding, but many teenagers are still in the mindset that no one will hack them. Even when they have millions of followers… Unfortunately, cybercrime is rapidly growing and the chances of getting hacked are high. Among notified breach victims last year, 39 percent of minors became victims of fraud, versus 19 percent of adults. Remind your kids that you share the same Wifi and if they download free game cheats or tokens, everyone at home may get hacked!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q11: Do You Accept Friend/Follower Requests On Social Media From Strangers?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Your friends online may not be who they appear to be, as talking to someone in person is different from online interactions where accounts can be hacked. When you receive a friend request, consider whether you have mutual friends, check the ratio of followers to following (a significantly higher 'following' count often indicates a fake account), and look for inappropriate pictures. Also, assess if you share common interests. Scammers can create social media accounts mimicking your favorite YouTubers, exploiting platforms that allow duplicate usernames and thumbnails to post phishing links. Phishing links are not limited to emails but are prevalent across various platforms. Since YouTubers are influential figures, children may easily fall for suggestions from what appears to be a legitimate source. Therefore, raising security awareness is crucial to protect against such scams.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q12: Have You Ever Received A Scam Message On Social Media?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Talking points: If you taught your kid not to take candy from strangers, you should also teach them not to accept free game tokens from people online. Many scammers offer freebies such as v-bucks, free skins, followers, and so on... remember there are no free gifts. If you are offered something for free, then most likely it is a scam.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q13: Do You Know Any Kids Who Hacked Other People?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Some kids hack for fun, ego, money, boredom, or just to see how far they can go. Reinforce that hacking is illegal and although it may seem fun to some, the impact of getting caught or losing your identity can be a life-changing moment.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q14: Do You Know Of Kids Who Have Sent Inappropriate Pictures Of Themselves Or Others?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Inform or remind the kids that sending or receiving inappropriate pictures is against the law. This is considered child pornography and even kids could end up registered as sex offenders.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q15: Do You Chat With Others While Gaming?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "You will be surprised but many apps have chat built into them,  even apps like Roblox or others that are very popular among younger kids.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q16: Do You Know Gamers Who Use Cheats? Is That Hacking?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Sometimes, cheats in games can come with additional risks, such as viruses that can be used to steal your information or identity. Moreover, if a cheat offers a gamer something that normally requires payment, it is not only unethical but also potentially illegal. Using such cheats undermines the integrity of the game and can lead to serious consequences both for the individual's digital security and legal standing.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q17: If You Think You Are Being Hacked Or Scammed Should You Report It? And To Who?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "If you think you are being hacked or scammed you should notify your parent(s) or teacher immediately. Once a cyber criminal has access to your device it is easier for them to hack the school, home, or parent's work computer.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q18: What cybersecurity threats do kids face today?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "The internet is more prevalent in the daily lives of children today than ever before, with the average teen or tween spending around nine hours per day online for various activities like socializing, gaming, and listening to music. During this extensive online time, kids face numerous cybersecurity threats, and scammers often target them because they can be easier to deceive. Major threats include phishing scams, downloading malware, sharing private information, mobile security risks, clickjacking attacks, and social engineering schemes. Scammers target children because they lack experience, have access to their parents' information, and often share devices with their parents. For instance, if a child downloads malware on a shared laptop, it could expose the parents' information. Therefore, it is crucial for parents to talk to their children about these threats, make it an ongoing conversation, and take proactive steps to secure the family's devices.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q19: How do I talk to my child about cybersecurity?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Kids are often more internet savvy than parents realize, but this confidence can lead them to dismiss parental concerns about online safety. Despite their tech skills, parents generally have more experience in safeguarding information online. It's essential to incorporate cybersecurity into the broader technology conversation early on. If kids are old enough to use the internet unsupervised, they are old enough to learn about cybersecurity. Basic topics to cover include the risks of clicking links, understanding phishing tactics, maintaining password privacy, recognizing and avoiding clickbait, keeping devices updated with security patches, identifying secure websites through HTTPS, being wary of offers that seem too good to be true, understanding digital stranger danger, and using public Wi-Fi safely. Parents might be surprised at how much children can grasp about cybersecurity when approached collaboratively. Start with the basics, check in regularly to discuss any issues or questions, and gradually introduce more information as their understanding deepens.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q20: How can we protect our family’s mobile devices?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "With the increasing reliance on mobile devices by parents and kids, hackers are now focusing their efforts on targeting these devices. To protect your family's mobile devices, ensure that personal devices are password-protected with unique, strong passwords, and that Bluetooth is turned off when not in use to prevent unauthorized access. Be cautious about downloading apps, as they can contain trackers, malware, and even use the camera or microphone to spy on you. Activate tracking features like Find My Device on Android and Find My iPhone on Apple devices, log out of accounts after each use, and keep device software up to date. Avoid connecting to public Wi-Fi, and educate children on the importance of being careful when sharing their devices with friends, who may be less cybersecurity savvy and could inadvertently compromise security.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q21: How do we protect our family’s computers?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "In many U.S. households, various family members, including kids, have access to personal or shared computers, offering opportunities for both enjoyable and important online activities. However, without proper security measures, these devices can become vulnerable to cyberattacks. To safeguard your family's computers, install a firewall, regularly update software with security patches, and utilize antivirus software to defend against malware. Implement strong access passwords for profiles, ensuring parents have access to devices as well, and restrict visitor access, preventing friends from using devices unattended. Continuous cybersecurity education for the entire family, covering topics such as phishing and ransomware, is essential. Additionally, leveraging router features, such as parental controls to block specific websites and monitoring tools to track online activity, enhances overall security. Configuring the router to use web filtering through DNS services adds an extra layer of protection for the entire household. Remember, consistent software updates are crucial for maintaining router security, just like with PCs and other devices.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q22:  How do we protect our family’s gaming systems?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Gaming systems have become integral parts of many households, offering connectivity for downloading games, communicating with other players, and serving as multifunctional entertainment hubs. To ensure the security of gaming devices, it's essential to educate children on key protective measures. Encourage them to safeguard gaming accounts with strong, unique passwords, refrain from sharing personal details during gameplay or chats, and only purchase downloadable content from reputable online stores. Caution against adding mods from unreliable sources and advise against saving payment information on the console's store platform to prevent unauthorized purchases. Emphasize the importance of keeping gaming systems and games updated, even if it means temporary interruptions to gameplay. Additionally, when using gaming systems on the go, educate children on the risks of connecting to public Wi-Fi and remind them to be cautious about sharing the console with others. These precautions help ensure the security and safety of gaming experiences both at home and away.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q23: What should our family know about passwords?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Sharing passwords, whether intentionally or inadvertently, poses significant security risks for both adults and children. Your passwords are akin to your digital identity on the internet and can be exploited by malicious actors to gain access to sensitive information or commit financial crimes. To ensure password security, it's crucial to keep your passwords private from your children and educate them about the importance of creating unique passwords for each website or account. Additionally, consider using a password manager to simplify password management and add an extra layer of security. By following these practices, you can better safeguard your digital identity and protect your family from potential cyber threats.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            color: Color.fromARGB(255, 12, 0, 43),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: ExpansionTile(
                backgroundColor: Color.fromARGB(255, 12, 0, 43),
                title: Text(
                  'Q24: How can we keep our home network secure?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  Text(
                    "Securing your home router is crucial to prevent unauthorized access to your network and protect your personal information. Start by setting up a password-protected secured network with a strong password for both the primary network and the guest connection if available. Changing the default router name, enabling network encryption, and disabling the router's ability to broadcast the network name further enhance security. Regularly updating your router's firmware is also essential to address any vulnerabilities. These measures help create a safer home network environment for you and your family. Educate children about the importance of not sharing the primary network password with friends and consider changing the access password periodically for added security. By implementing these steps, you can mitigate potential risks and enjoy a more secure online experience.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
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
