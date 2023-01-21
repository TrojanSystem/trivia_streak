import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_streak/header_screen.dart';
import 'package:trivia_streak/question_model.dart';

import 'data_hub.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({required this.category});

  String category;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  bool isCorrect = false;

  @override
  Widget build(BuildContext context) {
    final question = QuestionModel.questionList;
    final categoryFilter = question
        .where((element) => element.category == widget.category)
        .toList();
    final data = Provider.of<DataHub>(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(105, 89, 223, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(105, 89, 223, 1),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Slider(
                    activeColor: Colors.white,
                    inactiveColor: const Color.fromRGBO(77, 64, 169, 1),
                    min: 0,
                    max: 100,
                    value: 50,
                    onChanged: (vale) {},
                  ),
                  HeaderWidget.userProfile()
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 18, 8, 8),
                      child: Text(
                        'Question ${data.counts + 1}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 18, 8, 8),
                      child: Text(
                        categoryFilter[data.counts].question,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: categoryFilter[data.counts]
                              .incorrect_answers
                              .length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (categoryFilter[data.counts]
                                          .correct_answer ==
                                      categoryFilter[data.counts]
                                          .incorrect_answers[index]) {
                                    isCorrect = true;

                                    Provider.of<DataHub>(context, listen: false)
                                        .indexChanger(data.counts);
                                  } else {
                                    Provider.of<DataHub>(context, listen: false)
                                        .indexChanger(data.counts);
                                    isCorrect = false;
                                  }
                                });
                              },
                              child: QuestionOption(
                                  answer: categoryFilter[data.counts]
                                      .incorrect_answers[index],
                                  index: categoryFilter[data.counts]
                                      .correct_answer,
                                  isCorrect: isCorrect),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionOption extends StatelessWidget {
  QuestionOption(
      {required this.answer, required this.isCorrect, required this.index});

  String answer;
  bool isCorrect;
  String index;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 4),
          color: isCorrect && index == answer ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 40,
              spreadRadius: 10,
            )
          ]),
      child: Text(
        answer,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
