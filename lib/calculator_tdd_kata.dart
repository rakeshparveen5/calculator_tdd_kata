// A class that performs addition operations on the input of numbers of Type String
class StringCalculator {
  // Method that performs addition on numbers
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    // Default delimiter is comma & rest for double slashes strings, it will identify with below if block
    String delimiter = ',';
    String numbersPart = numbers;
    if (numbers.startsWith('//')) {
      final newlineIndex = numbers.indexOf('\n');
      final delimiterParts = numbers.substring(2, newlineIndex);
      if (delimiterParts.startsWith('[') && delimiterParts.endsWith(']')) {
        delimiter = delimiterParts.substring(1, delimiterParts.length - 1);
      } else {
        delimiter = delimiterParts;
      }
      numbersPart = numbers.substring(newlineIndex + 1);
    }

    final normalizedNumbers = numbersPart.replaceAll('\n', delimiter);
    final parts = normalizedNumbers.split(delimiter);

    final List<int> allNumbers = parts.map(int.parse).toList();
    final negativeNumbers = allNumbers.where((e) => e.isNegative).toList();
    if (negativeNumbers.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negativeNumbers.join(',')}',
      );
    }

    return allNumbers.where((e) => e <= 1000).reduce((a, b) => a + b);
  }
}
