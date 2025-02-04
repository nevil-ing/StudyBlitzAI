import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../data/models/quiz_question_model.dart';

class QuizDetailPage extends StatefulWidget {
  final QueryDocumentSnapshot data;
  const QuizDetailPage({Key? key, required this.data}) : super(key: key);

  @override
  State<QuizDetailPage> createState() => _QuizDetailPageState();
}

class _QuizDetailPageState extends State<QuizDetailPage> {
  @override
  Widget build(BuildContext context) {
    var questions = (widget.data['questions'] as List).map((item) => QuizQuestion.fromJson(item)).toList();
    var selectedAnswers = Map<int, String>.from(widget.data['selectedAnswers']);
    return Scaffold(
      appBar: AppBar(
        title: Text('Recent questions - ${widget.data['subject']}'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          var question = questions[index];
          var selectedAnswer = selectedAnswers[index];
          return ListTile(
            title: Text(' ${index + 1}.${question.question}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
      
                Text(
                  question.answer,
                  style: TextStyle(
                    color: selectedAnswer == question.answer ? Colors.green : null,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
