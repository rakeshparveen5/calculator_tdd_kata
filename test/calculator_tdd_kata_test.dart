import 'package:calculator_tdd_kata/calculator_tdd_kata.dart';
import 'package:test/test.dart';

void main() {
  test('returns 0 for empty string', () {
    StringCalculator calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });
}
