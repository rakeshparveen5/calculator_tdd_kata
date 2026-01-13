// A class that performs addition operations on the input of numbers of Type String
class StringCalculator {
  // Method that performs addition on numbers
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    final normalizedNumbers = numbers.replaceAll('\n', ',');
    final parts = normalizedNumbers.split(',');
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
