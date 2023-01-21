class QuestionModel {
  String category;
  String type;
  String difficulty;
  String question;
  String correct_answer;
  List incorrect_answers;

  QuestionModel(
      {required this.category,
      required this.correct_answer,
      required this.difficulty,
      required this.incorrect_answers,
      required this.question,
      required this.type});

  static List<QuestionModel> questionList = [
    QuestionModel(
      category: "Geography",
      type: "multiple",
      difficulty: "hard",
      question: "What is the largest city and commercial capital of Sri Lanka?",
      correct_answer: "Colombo",
      incorrect_answers: ["Moratuwa", "Negombo", "Kandy"],
    ),
    QuestionModel(
      category: "Geography",
      type: "multiple",
      difficulty: "medium",
      question:
          "Which European city has the highest mileage of canals in the world?",
      correct_answer: "Birmingham",
      incorrect_answers: ["Venice", "Amsterdam", "Berlin"],
    ),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "hard",
        question: "Which of these is NOT a province in China?",
        correct_answer: "Yangtze",
        incorrect_answers: ["Fujian", "Sichuan", "Guangdong"]),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "easy",
        question:
            "Which of these is the name of the largest city in the US state Tennessee?",
        correct_answer: "Memphis",
        incorrect_answers: ["Thebes", "Alexandria", "Luxor"]),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "medium",
        question: "How many countries does Spain have a land border with?",
        correct_answer: "5",
        incorrect_answers: ["2", "3", "4"]),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "easy",
        question: "What is the Capital of the United States?",
        correct_answer: "Washington, D.C.",
        incorrect_answers: [
          "Los Angelas, CA",
          "New York City, NY",
          "Houston, TX"
        ]),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "medium",
        question: "What tiny principality lies between Spain and France?",
        correct_answer: "Andorra",
        incorrect_answers: ["Liechtenstein", "Monaco", "San Marino"]),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "medium",
        question: "How many timezones does Russia have?",
        correct_answer: "11",
        incorrect_answers: ["6", "24", "16"]),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "hard",
        question:
            '  What is the most common climbing route for the second highest mountain in the world, K2?',
        correct_answer: "Abruzzi Spur",
        incorrect_answers: ["Magic Line", "Cesen Route", "Polish Line"]),
    QuestionModel(
        category: "Geography",
        type: "multiple",
        difficulty: "hard",
        question: "Into which basin does the Jordan River flow into?",
        correct_answer: "Dead Sea",
        incorrect_answers: ["Aral Sea", "Caspian Sea", "Salton Sea"]),
  ];
}
