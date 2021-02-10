import 'package:flutter/foundation.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({
    @required String text,
    @required int number
}) : super(text: text, number: number);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
        text: json['text'],
        number: (json['number'] as num).toInt()); //сначала приводим к общему - number
                                                  // так как к нему можно привести и int и double
  }

  Map<String, dynamic> toJson(){
    return {
      'text': text,
      'number': number,
    };
  }
}