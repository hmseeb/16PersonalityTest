// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psycho/constrants/routes.dart';
import 'package:psycho/utilities/calculator.dart';
import 'package:psycho/utilities/question_widget.dart';
import 'package:psycho/constrants/globals.dart';
import 'package:psycho/utilities/show_personality_dialogue.dart';
import 'package:restart_app/restart_app.dart';

class ThirdQuestionsView extends StatefulWidget {
  const ThirdQuestionsView({super.key});

  @override
  ThirdionsViewState createState() => ThirdionsViewState();
}

class ThirdionsViewState extends State<ThirdQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            QuestionWidget(
                text: "You enjoy spending time with",
                text2: "close friends and family",
                radioButton: 40,
                personalities: 6),
            QuestionWidget(
                text: "You are a loyal person",
                radioButton: 41,
                personalities: 6),
            QuestionWidget(
                text: "You enjoy being in control",
                radioButton: 42,
                personalities: 3),
            QuestionWidget(
                text: "You are naturally a punctual person",
                radioButton: 43,
                personalities: 3),
            QuestionWidget(
                text: "You enjoy expressing your creativity",
                text2: "through art or music",
                radioButton: 44,
                personalities: 7),
            QuestionWidget(
                text: "You are naturally an analytical person",
                radioButton: 45,
                personalities: 2),
            QuestionWidget(
                text: 'You are naturally a confident person',
                radioButton: 46,
                personalities: 0),
            QuestionWidget(
                text: "You really enjoy spending time in",
                text2: "new and unfamiliar places",
                radioButton: 47,
                personalities: 5),
            QuestionWidget(
                text: "You enjoy expressing your",
                text2: "ideas and opinions",
                radioButton: 48,
                personalities: 0),
            QuestionWidget(
                text: "You are naturally a detail-oriented",
                text2: "person",
                radioButton: 49,
                personalities: 1),
            QuestionWidget(
                text: "You like helping others",
                text2: "or providing support",
                radioButton: 50,
                personalities: 6),
            QuestionWidget(
                text: "You are a flexible person",
                radioButton: 51,
                personalities: 7),
            QuestionWidget(
                text: "You enjoy planning events or projects",
                radioButton: 52,
                personalities: 3),
            QuestionWidget(
                text: "You enjoy spending time outdoors",
                radioButton: 53,
                personalities: 0),
            QuestionWidget(
                text: "You are an independent person",
                radioButton: 54,
                personalities: 4),
            QuestionWidget(
                text: "You are an open-minded person",
                radioButton: 55,
                personalities: 5),
            QuestionWidget(
                text: "You are a cooperative person",
                radioButton: 56,
                personalities: 6),
            QuestionWidget(
                text: "You a naturally energetic person?",
                radioButton: 57,
                personalities: 2),
            QuestionWidget(
                text: "You are naturally an assertive person",
                radioButton: 58,
                personalities: 0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Restart.restartApp(webOrigin: homePageRoute);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    child: Icon(
                      CupertinoIcons.arrow_counterclockwise,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        personalityType = '';
                        PersonalityCalculator().calculatePersonalityType();
                        if (personalityType == 'ISTJ') {
                          personalityType = istj;
                        } else if (personalityType == 'ISFJ') {
                          personalityType = isfj;
                        } else if (personalityType == 'INFJ') {
                          personalityType = infj;
                        } else if (personalityType == 'INTJ') {
                          personalityType = intj;
                        } else if (personalityType == 'ISTP') {
                          personalityType = istp;
                        } else if (personalityType == 'ISFP') {
                          personalityType = isfp;
                        } else if (personalityType == 'INTP') {
                          personalityType = intp;
                        } else if (personalityType == 'ESTP') {
                          personalityType = estp;
                        } else if (personalityType == 'ESFP') {
                          personalityType = esfp;
                        } else if (personalityType == 'ENFP') {
                          personalityType = enfp;
                        } else if (personalityType == 'ENTP') {
                          personalityType = entp;
                        } else if (personalityType == 'ESTJ') {
                          personalityType = estj;
                        } else if (personalityType == 'ESFJ') {
                          personalityType = esfj;
                        } else if (personalityType == 'ENFJ') {
                          personalityType = enfj;
                        } else if (personalityType == 'ENTJ') {
                          personalityType = entj;
                        } else if (personalityType == 'INFP') {
                          personalityType = infp;
                        }
                        showPersonalityDialogue(context, personalityType,
                            Colors.grey[900], Colors.black);
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    child: Icon(
                      CupertinoIcons.check_mark,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      secondPageRoute,
                      (route) => false,
                    );
                  },
                  child: Icon(
                    CupertinoIcons.back,
                    color: Colors.greenAccent,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  style: TextButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      firstPageRoute,
                      (route) => false,
                    );
                  },
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('..',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                        fontSize: 16,
                      )),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
