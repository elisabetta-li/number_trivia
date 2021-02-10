
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(text: 'Test text', number: 1);
  
  test('should be a subclass jf NumberTrivia entity',
      () async {
    expect(tNumberTriviaModel, isA<NumberTrivia>());
      }
  );

}