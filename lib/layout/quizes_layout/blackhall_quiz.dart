import 'package:flutter/material.dart';

class BlackhallQuiz extends StatefulWidget {
  const BlackhallQuiz({super.key});

  @override
  State<BlackhallQuiz> createState() => _BlackhallQuizState();
}

class _BlackhallQuizState extends State<BlackhallQuiz> {
  @override
  List<Map<String, dynamic>> questions = [
    {
      "numb": 1,
      "question": "What is a black hole?",
      "answer":
          "C. A region in space with a gravitational pull so strong that nothing can escape.",
      "options": [
        "A. A type of star",
        "B. A large planet",
        "C. A region in space with a gravitational pull so strong that nothing can escape.",
        "D. A dark cloud of gas"
      ]
    },
    {
      "numb": 2,
      "question": "Who first theorized the existence of black holes?",
      "answer": "A. Albert Einstein",
      "options": [
        "A. Albert Einstein",
        "B. Stephen Hawking",
        "C. Isaac Newton",
        "D. Nikola Tesla"
      ]
    },
    {
      "numb": 3,
      "question": "What is the boundary around a black hole called?",
      "answer": "B. Event Horizon",
      "options": [
        "A. Singularity",
        "B. Event Horizon",
        "C. Accretion Disk",
        "D. Schwarzschild Radius"
      ]
    },
    {
      "numb": 4,
      "question":
          "What forms when a massive star collapses under its own gravity?",
      "answer": "C. Black hole",
      "options": [
        "A. Neutron star",
        "B. White dwarf",
        "C. Black hole",
        "D. Red giant"
      ]
    },
    {
      "numb": 5,
      "question":
          "What is the point of infinite density in a black hole called?",
      "answer": "A. Singularity",
      "options": [
        "A. Singularity",
        "B. Event Horizon",
        "C. Photon Sphere",
        "D. Gravitational Well"
      ]
    },
    {
      "numb": 6,
      "question":
          "Which type of black hole is formed from the remnants of a supernova?",
      "answer": "B. Stellar black hole",
      "options": [
        "A. Supermassive black hole",
        "B. Stellar black hole",
        "C. Primordial black hole",
        "D. Galactic black hole"
      ]
    },
    {
      "numb": 7,
      "question": "What happens to time near a black hole?",
      "answer": "C. Time slows down",
      "options": [
        "A. Time speeds up",
        "B. Time stops",
        "C. Time slows down",
        "D. Time remains unchanged"
      ]
    },
    {
      "numb": 8,
      "question":
          "What is the name of the phenomenon where light bends around a black hole?",
      "answer": "D. Gravitational lensing",
      "options": [
        "A. Dark matter effect",
        "B. Light warping",
        "C. Time dilation",
        "D. Gravitational lensing"
      ]
    },
    {
      "numb": 9,
      "question": "What is the largest known type of black hole?",
      "answer": "A. Supermassive black hole",
      "options": [
        "A. Supermassive black hole",
        "B. Stellar black hole",
        "C. Micro black hole",
        "D. Primordial black hole"
      ]
    },
    {
      "numb": 10,
      "question":
          "What is the term for the disk of gas and dust that surrounds a black hole?",
      "answer": "B. Accretion Disk",
      "options": [
        "A. Debris Disk",
        "B. Accretion Disk",
        "C. Matter Disk",
        "D. Radiation Disk"
      ]
    },
    {
      "numb": 11,
      "question": "Which black hole is located at the center of our galaxy?",
      "answer": "C. Sagittarius A*",
      "options": [
        "A. Cygnus X-1",
        "B. V404 Cygni",
        "C. Sagittarius A*",
        "D. M87*"
      ]
    },
    {
      "numb": 12,
      "question":
          "What evidence do scientists use to infer the presence of black holes?",
      "answer": "A. Gravitational effects on nearby stars",
      "options": [
        "A. Gravitational effects on nearby stars",
        "B. Direct observation of the black hole's surface",
        "C. Light emitted from the black hole",
        "D. Sound waves from the black hole"
      ]
    },
    {
      "numb": 13,
      "question": "What happens to matter that crosses the event horizon?",
      "answer": "B. It cannot escape",
      "options": [
        "A. It becomes a neutron star",
        "B. It cannot escape",
        "C. It becomes part of the black hole",
        "D. It is ejected back into space"
      ]
    },
    {
      "numb": 14,
      "question":
          "What are black holes that are formed from the collapse of massive stars called?",
      "answer": "C. Stellar black holes",
      "options": [
        "A. Supermassive black holes",
        "B. Micro black holes",
        "C. Stellar black holes",
        "D. Primordial black holes"
      ]
    },
    {
      "numb": 15,
      "question": "What is Hawking radiation?",
      "answer": "D. Theoretical radiation emitted by black holes",
      "options": [
        "A. Radiation from neutron stars",
        "B. Visible light emitted from black holes",
        "C. X-rays emitted by black holes",
        "D. Theoretical radiation emitted by black holes"
      ]
    },
    {
      "numb": 16,
      "question": "How do scientists believe supermassive black holes form?",
      "answer":
          "A. From the merging of smaller black holes and gas accumulation",
      "options": [
        "A. From the merging of smaller black holes and gas accumulation",
        "B. From the collapse of giant stars",
        "C. From primordial black holes",
        "D. From gravitational waves"
      ]
    },
    {
      "numb": 17,
      "question": "What is a black hole's 'shadow'?",
      "answer": "B. The area where light cannot escape",
      "options": [
        "A. The visible part of a black hole",
        "B. The area where light cannot escape",
        "C. The event horizon",
        "D. The accretion disk"
      ]
    },
    {
      "numb": 18,
      "question":
          "What type of black hole can theoretically exist and is smaller than stellar black holes?",
      "answer": "A. Micro black hole",
      "options": [
        "A. Micro black hole",
        "B. Stellar black hole",
        "C. Supermassive black hole",
        "D. Primordial black hole"
      ]
    },
    {
      "numb": 19,
      "question":
          "What instrument is primarily used to detect black holes indirectly?",
      "answer": "C. Radio telescope",
      "options": [
        "A. Optical telescope",
        "B. Infrared telescope",
        "C. Radio telescope",
        "D. X-ray telescope"
      ]
    },
    {
      "numb": 20,
      "question": "What happens when two black holes collide?",
      "answer": "B. They merge into a larger black hole",
      "options": [
        "A. They explode",
        "B. They merge into a larger black hole",
        "C. They repel each other",
        "D. They create a neutron star"
      ]
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
        title: Text("Blackhall Quiz", style: TextStyle(color: Colors.white)),
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
