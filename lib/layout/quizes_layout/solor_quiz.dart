import 'package:flutter/material.dart';

class SolorQuiz extends StatefulWidget {
  const SolorQuiz({super.key});

  @override
  State<SolorQuiz> createState() => _SolorQuizState();
}

class _SolorQuizState extends State<SolorQuiz> {
  @override
  List<Map<String, dynamic>> questions = [
    {
      "numb": 1,
      "question": "What is the Solar System?",
      "answer":
          "C. A collection of planets and other celestial bodies that orbit the Sun.",
      "options": [
        "A. A single planet",
        "B. A galaxy",
        "C. A collection of planets and other celestial bodies that orbit the Sun.",
        "D. A black hole"
      ]
    },
    {
      "numb": 2,
      "question":
          "Which planet is known as the 'Evening Star' or 'Morning Star'?",
      "answer": "A. Venus",
      "options": ["A. Venus", "B. Mars", "C. Mercury", "D. Jupiter"]
    },
    {
      "numb": 3,
      "question": "What is the name of the largest moon of Saturn?",
      "answer": "B. Titan",
      "options": ["A. Ganymede", "B. Titan", "C. Callisto", "D. Europa"]
    },
    {
      "numb": 4,
      "question": "What is the closest planet to the Sun?",
      "answer": "C. Mercury",
      "options": ["A. Earth", "B. Venus", "C. Mercury", "D. Mars"]
    },
    {
      "numb": 5,
      "question": "Which planet is known as the 'Ringed Planet'?",
      "answer": "A. Saturn",
      "options": ["A. Saturn", "B. Jupiter", "C. Uranus", "D. Neptune"]
    },
    {
      "numb": 6,
      "question":
          "Which of the following planets is considered a terrestrial (rocky) planet?",
      "answer": "C. Earth",
      "options": ["A. Jupiter", "B. Saturn", "C. Earth", "D. Neptune"]
    },
    {
      "numb": 7,
      "question": "What is the largest planet in the solar system?",
      "answer": "B. Jupiter",
      "options": ["A. Saturn", "B. Jupiter", "C. Earth", "D. Uranus"]
    },
    {
      "numb": 8,
      "question": "Which planet has the highest surface temperatures?",
      "answer": "B. Venus",
      "options": ["A. Mercury", "B. Venus", "C. Mars", "D. Earth"]
    },
    {
      "numb": 9,
      "question": "How many planets are in the solar system?",
      "answer": "B. 8",
      "options": ["A. 7", "B. 8", "C. 9", "D. 10"]
    },
    {
      "numb": 10,
      "question": "Which of the following planets is considered a gas giant?",
      "answer": "C. Jupiter",
      "options": ["A. Earth", "B. Mars", "C. Jupiter", "D. Mercury"]
    },
    {
      "numb": 11,
      "question": "What is the name of the fifth planet from the Sun?",
      "answer": "C. Jupiter",
      "options": ["A. Mars", "B. Saturn", "C. Jupiter", "D. Neptune"]
    },
    {
      "numb": 12,
      "question": "Which planet is known for its Great Red Spot?",
      "answer": "C. Jupiter",
      "options": ["A. Mars", "B. Saturn", "C. Jupiter", "D. Uranus"]
    },
    {
      "numb": 13,
      "question": "What is the primary component of the Sun?",
      "answer": "B. Hydrogen",
      "options": ["A. Oxygen", "B. Hydrogen", "C. Helium", "D. Carbon"]
    },
    {
      "numb": 14,
      "question": "Which planet is known as the 'Red Planet'?",
      "answer": "B. Mars",
      "options": ["A. Venus", "B. Mars", "C. Mercury", "D. Jupiter"]
    },
    {
      "numb": 15,
      "question": "Which planet rotates on its side?",
      "answer": "C. Uranus",
      "options": ["A. Earth", "B. Venus", "C. Uranus", "D. Neptune"]
    },
    {
      "numb": 16,
      "question": "What is the smallest planet in the solar system?",
      "answer": "A. Mercury",
      "options": ["A. Mercury", "B. Mars", "C. Venus", "D. Earth"]
    },
    {
      "numb": 17,
      "question": "Which planet has the most moons?",
      "answer": "C. Jupiter",
      "options": ["A. Earth", "B. Saturn", "C. Jupiter", "D. Mars"]
    },
    {
      "numb": 18,
      "question":
          "What is the term for the path a planet takes around the Sun?",
      "answer": "A. Orbit",
      "options": ["A. Orbit", "B. Revolution", "C. Rotation", "D. Trajectory"]
    },
    {
      "numb": 19,
      "question": "Which planet is famous for its extensive ring system?",
      "answer": "C. Saturn",
      "options": ["A. Jupiter", "B. Mars", "C. Saturn", "D. Neptune"]
    },
    {
      "numb": 20,
      "question": "What is the coldest planet in the solar system?",
      "answer": "B. Neptune",
      "options": ["A. Uranus", "B. Neptune", "C. Mercury", "D. Mars"]
    }
  ];

  // Add other questions here as needed

  int currentQuestionIndex = 0;
  int score = 0;
  String selectedAnswer = "";

  void nextQuestion() {
    if (selectedAnswer.isNotEmpty) {
      if (selectedAnswer == questions[currentQuestionIndex]['answer']) {
        score += 1;
      }
      if (currentQuestionIndex < questions.length - 1) {
        setState(() {
          currentQuestionIndex += 1;
          selectedAnswer = "";
        });
      } else {
        // Quiz finished, show result
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Quiz Finished'),
            content: Text('Your score is $score/${questions.length}.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  resetQuiz();
                },
                child: Text('Restart'),
              ),
              SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('ok'),
              ),
            ],
          ),
        );
      }
    }
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      score = 0;
      selectedAnswer = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Solor System Quiz", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff1B0B87),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image_3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Question ${questions[currentQuestionIndex]['numb']}/${questions.length}",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  questions[currentQuestionIndex]['question'],
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 20),
                Column(
                  children: questions[currentQuestionIndex]['options']
                      .map<Widget>((option) => RadioListTile(
                            title: Text(option,
                                style: TextStyle(color: Colors.white)),
                            value: option,
                            groupValue: selectedAnswer,
                            onChanged: (value) {
                              setState(() {
                                selectedAnswer = value as String;
                              });
                            },
                          ))
                      .toList(),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8940CB),
                      ),
                      onPressed: () {
                        if (currentQuestionIndex != 0) {
                          setState(() {});
                          currentQuestionIndex--;
                        }
                      },
                      child: Text(
                        "Previous Question",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff8940CB),
                      ),
                      onPressed: nextQuestion,
                      child: Text(
                        currentQuestionIndex < questions.length - 1
                            ? "Next Question"
                            : "Finish Quiz",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
