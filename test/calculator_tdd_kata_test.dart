import 'package:calculator_tdd_kata/calculator_tdd_kata.dart';
import 'package:test/test.dart';

void main() {
  test('returns 0 for empty string', () {
    StringCalculator calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });

  test('returns number for single number', () {
    StringCalculator calculator = StringCalculator();
    expect(calculator.add('1'), 1);
  });

  test('returns sum of 2 comma separated numbers', () {
    StringCalculator calculator = StringCalculator();
    expect(calculator.add('1,5'), equals(6));
  });

  test('returns sum of multiple numbers', () {
    StringCalculator calculator = StringCalculator();
    expect(calculator.add('1,2,3,4'), 10);
  });

  test('handles new lines in numbers', () {
    StringCalculator calculator = StringCalculator();
    expect(calculator.add('1\n2,3'), equals(6));
  });

  test('handles other delimiters with prefix // in numbers', () {
    StringCalculator calculator = StringCalculator();
    expect(calculator.add('//;\n1;2'), equals(3));
  });
}
