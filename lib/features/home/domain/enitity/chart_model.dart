import 'dart:convert';
import 'package:flutter/foundation.dart';

class ChatModel {
  String question;
  String answer;
  ChatModel({
    required this.question,
    required this.answer,
  });

  ChatModel copyWith({
    String? question,
    String? answer,
  }) {
    return ChatModel(
      question: question ?? this.question,
      answer: answer ?? this.answer,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'question': question});
    result.addAll({'answer': answer});

    return result;
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      question: map['question'] ?? '',
      answer: map['answer'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source));

  @override
  String toString() => 'ChatModel(question: $question, answer: $answer)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatModel &&
        other.question == question &&
        other.answer == answer;
  }

  @override
  int get hashCode => question.hashCode ^ answer.hashCode;
}
