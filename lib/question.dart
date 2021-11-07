import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<String> questions = ['りんご', 'もも'];

  List<List<String>> answers = [
    ['a', 'p', 'p', 'l', 'e'],
    ['p', 'e', 'a', 'c', 'h']
  ];

  List<List<String>> options = [
    ['a', 'j', 'i', 'e'],
    ['e', 'o', 'p', 'a'],
    ['p', 'q', 'i', 'a'],
    ['d', 'e', 'l', 'r'],
    ['t', 'e', 'v', 'p'],
    ['p', 'd', 'a', 'm'],
    ['a', 'e', 's', 'w'],
    ['w', 'o', 'a', 'c'],
    ['c', 'a', 't', 'q'],
    ['h', 'm', 'x', 'z'],
  ];

  List<String> images = [
    'lib/images/Group 7 (3).png',
    'lib/images/Group 11 (2).png'
  ];
  int questionNumber = 0;
  int answerNumber = 0;
  int optionNumber = 0;
  int imageNumber = 0;

  bool _isVisible = true;
  bool _isCorrected = false;
  bool _isMistaked = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(images[imageNumber]),
              fit: BoxFit.cover,
            )),
          ),
          Scaffold(
            backgroundColor: Colors.green.withOpacity(0),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Visibility(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Text(
                            questions[questionNumber],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // Visibility(
                      //   child: Text(
                      //     '正解！',
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       fontSize: 25.0,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      //   visible: _isCorrected,
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Visibility(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 0, right: 250),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.green,
                                      backgroundColor: Colors.white,
                                      minimumSize: Size(70.0, 70.0),
                                    ),
                                    child: Text(
                                      options[optionNumber][0],
                                      style: TextStyle(
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      String selectedOption =
                                          options[optionNumber][0];
                                      String correctAnswer =
                                          answers[questionNumber][answerNumber];
                                      setState(() {
                                        if (selectedOption == correctAnswer) {
                                          if (optionNumber <= 8) {
                                            optionNumber++;
                                            answerNumber++;
                                          } else {
                                            questionNumber++;
                                            answerNumber = 0;
                                            _isVisible = false;
                                            _isCorrected = true;
                                          }
                                        } else {
                                          answerNumber = 0;
                                          questionNumber++;
                                          optionNumber = 5;
                                          imageNumber++;
                                          _isMistaked = false;
                                        }
                                      });
                                    }),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 250, right: 0),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.green,
                                      backgroundColor: Colors.white,
                                      minimumSize: Size(70.0, 70.0),
                                    ),
                                    child: Text(
                                      options[optionNumber][1],
                                      style: TextStyle(
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      String selectedOption =
                                          options[optionNumber][1];
                                      String correctAnswer =
                                          answers[questionNumber][answerNumber];
                                      setState(() {
                                        if (selectedOption == correctAnswer) {
                                          if (optionNumber <= 8) {
                                            optionNumber++;
                                            answerNumber++;
                                          } else {
                                            questionNumber++;
                                            answerNumber = 0;
                                            _isVisible = false;
                                            _isCorrected = true;
                                          }
                                        } else {
                                          answerNumber = 0;
                                          questionNumber++;
                                          optionNumber = 5;
                                          imageNumber++;
                                          _isMistaked = false;
                                        }
                                      });
                                    }),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 0, right: 250),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.green,
                                      backgroundColor: Colors.white,
                                      minimumSize: Size(70.0, 70.0),
                                    ),
                                    child: Text(
                                      options[optionNumber][2],
                                      style: TextStyle(
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      String selectedOption =
                                          options[optionNumber][2];
                                      String correctAnswer =
                                          answers[questionNumber][answerNumber];
                                      setState(() {
                                        if (selectedOption == correctAnswer) {
                                          if (optionNumber <= 8) {
                                            optionNumber++;
                                            answerNumber++;
                                          } else {
                                            questionNumber++;
                                            answerNumber = 0;
                                            _isVisible = false;
                                            _isCorrected = true;
                                          }
                                        } else {
                                          answerNumber = 0;
                                          questionNumber++;
                                          optionNumber = 5;
                                          imageNumber++;
                                          _isMistaked = false;
                                        }
                                      });
                                    }),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 300, left: 250, right: 0),
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                      primary: Colors.green,
                                      backgroundColor: Colors.white,
                                      minimumSize: Size(70.0, 70.0),
                                    ),
                                    child: Text(
                                      options[optionNumber][3],
                                      style: TextStyle(
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      String selectedOption =
                                          options[optionNumber][3];
                                      String correctAnswer =
                                          answers[questionNumber][answerNumber];
                                      setState(() {
                                        if (selectedOption == correctAnswer) {
                                          if (optionNumber <= 8) {
                                            optionNumber++;
                                            answerNumber++;
                                          } else {
                                            questionNumber++;
                                            answerNumber = 0;
                                            _isVisible = false;
                                            _isCorrected = true;
                                          }
                                        } else {
                                          answerNumber = 0;
                                          questionNumber++;
                                          optionNumber = 5;
                                          imageNumber++;
                                          _isMistaked = false;
                                        }
                                      });
                                    }),
                              ),
                            ],
                          ),
                          visible: _isVisible,
                        ),
                      ),
                    ],
                  ),
                  visible: _isMistaked,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class QuizPage extends StatefulWidget {
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   List<String> questions = ['りんご', 'もも'];
//
//   List<List<String>> answers = [
//     ['a', 'p', 'p', 'l', 'e'],
//     ['p', 'e', 'a', 'c', 'h']
//   ];
//
//   List<List<String>> options = [
//     ['a', 'j', 'i', 'e'],
//     ['e', 'o', 'p', 'a'],
//     ['p', 'q', 'i', 'a'],
//     ['d', 'e', 'l', 'r'],
//     ['t', 'e', 'v', 'p'],
//     ['p', 'd', 'a', 'm'],
//     ['a', 'e', 's', 'w'],
//     ['w', 'o', 'a', 'c'],
//     ['c', 'a', 't', 'q'],
//     ['h', 'm', 'x', 'z'],
//   ];
//
//   int questionNumber = 0;
//   int answerNumber = 0;
//   int optionNumber = 0;
//
//   bool _isVisible = true;
//   bool _isCorrected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.only(top: 30.0),
//             child: Text(
//               questions[questionNumber],
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 25.0,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//         // Visibility(
//         //   child: Text(
//         //     '正解！',
//         //     textAlign: TextAlign.center,
//         //     style: TextStyle(
//         //       fontSize: 25.0,
//         //       color: Colors.white,
//         //     ),
//         //   ),
//         //   visible: _isCorrected,
//         // ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Visibility(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   margin:
//                       EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 250),
//                   child: TextButton(
//                       style: TextButton.styleFrom(
//                         primary: Colors.green,
//                         backgroundColor: Colors.white,
//                         minimumSize: Size(70.0, 70.0),
//                       ),
//                       child: Text(options[optionNumber][0]),
//                       onPressed: () {
//                         String selectedOption = options[optionNumber][0];
//                         String correctAnswer =
//                             answers[questionNumber][answerNumber];
//                         setState(() {
//                           if (selectedOption == correctAnswer) {
//                             if (optionNumber <= 8) {
//                               optionNumber++;
//                               answerNumber++;
//                             } else {
//                               questionNumber++;
//                               answerNumber = 0;
//                               _isVisible = false;
//                               _isCorrected = true;
//                             }
//                           } else {
//                             answerNumber = 0;
//                             questionNumber++;
//                             optionNumber = 5;
//                           }
//                         });
//                       }),
//                 ),
//                 Container(
//                   margin:
//                       EdgeInsets.only(top: 0, bottom: 0, left: 250, right: 0),
//                   child: TextButton(
//                       style: TextButton.styleFrom(
//                         primary: Colors.green,
//                         backgroundColor: Colors.white,
//                         minimumSize: Size(70.0, 70.0),
//                       ),
//                       child: Text(options[optionNumber][1]),
//                       onPressed: () {
//                         String selectedOption = options[optionNumber][1];
//                         String correctAnswer =
//                             answers[questionNumber][answerNumber];
//                         setState(() {
//                           if (selectedOption == correctAnswer) {
//                             if (optionNumber <= 8) {
//                               optionNumber++;
//                               answerNumber++;
//                             } else {
//                               questionNumber++;
//                               answerNumber = 0;
//                               _isVisible = false;
//                               _isCorrected = true;
//                             }
//                           } else {
//                             answerNumber = 0;
//                             questionNumber++;
//                             optionNumber = 5;
//                           }
//                         });
//                       }),
//                 ),
//                 Container(
//                   margin:
//                       EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 250),
//                   child: TextButton(
//                       style: TextButton.styleFrom(
//                         primary: Colors.green,
//                         backgroundColor: Colors.white,
//                         minimumSize: Size(70.0, 70.0),
//                       ),
//                       child: Text(options[optionNumber][2]),
//                       onPressed: () {
//                         String selectedOption = options[optionNumber][2];
//                         String correctAnswer =
//                             answers[questionNumber][answerNumber];
//                         setState(() {
//                           if (selectedOption == correctAnswer) {
//                             if (optionNumber <= 8) {
//                               optionNumber++;
//                               answerNumber++;
//                             } else {
//                               questionNumber++;
//                               answerNumber = 0;
//                               _isVisible = false;
//                               _isCorrected = true;
//                             }
//                           } else {
//                             answerNumber = 0;
//                             questionNumber++;
//                             optionNumber = 5;
//                           }
//                         });
//                       }),
//                 ),
//                 Container(
//                   margin:
//                       EdgeInsets.only(top: 0, bottom: 300, left: 250, right: 0),
//                   child: TextButton(
//                       style: TextButton.styleFrom(
//                         primary: Colors.green,
//                         backgroundColor: Colors.white,
//                         minimumSize: Size(70.0, 70.0),
//                       ),
//                       child: Text(options[optionNumber][3]),
//                       onPressed: () {
//                         String selectedOption = options[optionNumber][3];
//                         String correctAnswer =
//                             answers[questionNumber][answerNumber];
//                         setState(() {
//                           if (selectedOption == correctAnswer) {
//                             if (optionNumber <= 8) {
//                               optionNumber++;
//                               answerNumber++;
//                             } else {
//                               questionNumber++;
//                               answerNumber = 0;
//                               _isVisible = false;
//                               _isCorrected = true;
//                             }
//                           } else {
//                             answerNumber = 0;
//                             questionNumber++;
//                             optionNumber = 5;
//                           }
//                         });
//                       }),
//                 ),
//               ],
//             ),
//             visible: _isVisible,
//           ),
//         ),
//       ],
//     );
//   }
// }
