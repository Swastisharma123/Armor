import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'package:text_to_speech/text_to_speech.dart';

class ArmorBot extends StatefulWidget {
  const ArmorBot({super.key});

  @override
  State<ArmorBot> createState() => _ArmorBotState();
}

class _ArmorBotState extends State<ArmorBot> {
  String response = '';
  String simpleResponse = "";

  final textController = TextEditingController();

  TextToSpeech tts = TextToSpeech();

  void startGemini(prompt) async {
    setState(() {
      response = "Generating Response...";
    });
    String apiKey = "AIzaSyALPCwEM90DwmQP-R1rM-5E_bYNGSfV3wk";

    final model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: apiKey,
      generationConfig: GenerationConfig(maxOutputTokens: 500),
    );
    final chat = model.startChat(history: [
      Content.text(
        'Who are you?',
      ),
      Content.model(
        [
          TextPart(
            "I am Armor Bot, here to answers all your doubts on cyber security. Feel free to ask!",
          ),
        ],
      ),
      Content.text(
        'Who developed you?',
      ),
      Content.model(
        [
          TextPart(
            "I am Armor Bot, and I am developed by Swasti Sharma. Fell free to ask me questions related to cyber security!",
          ),
        ],
      ),
    ]);
    var content = Content.text(prompt);
    var output = await chat.sendMessage(content);
    setState(() {
      // response = output.text.toString();
      // simpleResponse = response.replaceAll('*', '');
      simpleResponse = output.text.toString().replaceAll('*', '');
      response = simpleResponse;
    });
    tts.setVolume(1.0);
    tts.speak(simpleResponse);
  }

  final SpeechToText _speechToText = SpeechToText();
  String _lastWords = '';

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    setState(() {});
  }

  Future<void> _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {
      response = "Listening...";
    });
  }

  Future<void> _stopListening() async {
    await _speechToText.stop();
    setState(() {
      response = "";
    });
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      _lastWords = result.recognizedWords;
    });
    textController.value = TextEditingValue(
      text: _lastWords,
    );
  }

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
            padding: EdgeInsets.fromLTRB(5 * fem, 0, 5 * fem, 5 * fem),
            child: Container(
              height: 140 * fem,
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
                  // Padding(
                  //   padding: EdgeInsets.all(5 * fem),
                  //   child: Container(
                  //     height: 15 * fem,
                  //     width: 50 * fem,
                  //     decoration: const BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(
                  //           20,
                  //         ),
                  //       ),
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Armor Bot:",
                  //         style: GoogleFonts.urbanist(
                  //           fontSize: 7 * ffem,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Row(
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                      //   child: Container(
                      //     decoration: const BoxDecoration(
                      //       color: Colors.lightBlue,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(
                      //           15,
                      //         ),
                      //       ),
                      //     ),
                      //     height: 110 * fem,
                      //     width: 80 * fem,
                      //     child: ClipRRect(
                      //       borderRadius: const BorderRadius.all(
                      //         Radius.circular(
                      //           15,
                      //         ),
                      //       ),
                      //       child: Image.network(
                      //         'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/armorbot.png?v=1715777640898',
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0),
                        child: Container(
                          decoration: const BoxDecoration(
                              // color: Colors.redAccent,
                              ),
                          height: 110 * fem,
                          width: 255 * fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0 * fem, 0, 0, 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20,
                                      ),
                                    ),
                                    // color: Colors.lightBlue,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(3 * fem),
                                    child: Text(
                                      "YOUR PERSONAL CYBER SECURITY ASSISTANT - Check it Out!",
                                      style: GoogleFonts.manrope(
                                        fontSize: 6 * ffem,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2 * fem, 0, 0),
                                child: Container(
                                  height: 75 * fem,
                                  width: 260 * fem,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20,
                                      ),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: EdgeInsets.all(4 * fem),
                                      child: Text(
                                        response,
                                        style: GoogleFonts.urbanist(
                                          fontSize: 5 * ffem,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2 * fem, 0, 0),
                                child: Container(
                                  height: 16.5 * fem,
                                  width: 260 * fem,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        20,
                                      ),
                                      topRight: Radius.circular(
                                        20,
                                      ),
                                      bottomLeft: Radius.circular(
                                        20,
                                      ),
                                      bottomRight: Radius.circular(
                                        20,
                                      ),
                                    ),
                                    color: Colors.lightBlue,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                      5 * fem,
                                      1.5 * fem,
                                      5 * fem,
                                      0,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        TextField(
                                          controller: textController,
                                          style: GoogleFonts.poppins(),
                                          onSubmitted: (value) {
                                            startGemini(value);
                                            setState(() {
                                              textController.clear();
                                            });
                                          },
                                          decoration: const InputDecoration(
                                            hintText:
                                                "Ask questions on cyber security...",
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              onTap:
                                                  _speechToText.isNotListening
                                                      ? _startListening
                                                      : _stopListening,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Colors.lightBlue,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.all(2 * fem),
                                                  child: Icon(
                                                    _speechToText.isNotListening
                                                        ? Icons.mic_none_rounded
                                                        : Icons.mic_rounded,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                startGemini(
                                                  textController.text,
                                                );
                                                textController.clear();
                                              },
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Colors.lightBlue,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.all(2 * fem),
                                                  child: const Icon(
                                                    Icons.send_rounded,
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
                              ),
                            ],
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
                              'https://cdn.glitch.global/a1c9dae3-4e08-40af-bc03-b47449a50c5f/armorbot.png?v=1715777640898',
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
        ],
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    tts.stop();
    super.dispose();
  }
}
