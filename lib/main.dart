import 'package:flutter/material.dart';
import 'quizBrain.dart';

void main() {
  runApp(
    Quiz(),
  );
}


QuizBrain quiz = QuizBrain();



class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('quiz_app'),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      quiz.getQuestion().q!,
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 60.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.green), // Set the button color
                          ),
                          onPressed: () {
                            if (quiz.getQuestion().a == true) {
                              setState(() {
                                quiz.updateQuestion();
                              });
                            }
                          },
                          child: Text('True'),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 60.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.red), // Set the button color
                          ),
                          onPressed: () {
                            if (quiz.getQuestion().a == false) {
                              setState(() {
                                quiz.updateQuestion();
                              });
                            }
                          },
                          child: Text('False'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
