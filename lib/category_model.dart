import 'package:trivia_streak/question_model.dart';

class CategoryModel {
  String title;
  List questionList;

  CategoryModel({required this.questionList, required this.title});

 static List<CategoryModel> category = [
    CategoryModel(title: 'Geography', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Math', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Physics', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Chemistry', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Biology', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Science', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Soccer', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Lab', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Astronomy', questionList: QuestionModel.questionList),
    CategoryModel(title: 'Music', questionList: QuestionModel.questionList),
  ];
}
