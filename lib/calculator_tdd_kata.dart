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
      delimiter = numbers.substring(2, newlineIndex);
      numbersPart = numbers.substring(newlineIndex + 1);
    }

    final normalizedNumbers = numbersPart.replaceAll('\n', delimiter);
    final parts = normalizedNumbers.split(delimiter);

    final List<int> allNumbers = [];
    final negativeNumbers = [];
    for (int i = 0; i < parts.length; i++) {
      final num = int.parse(parts[i]);
      allNumbers.add(num);

      if (num < 0) negativeNumbers.add(num);
    }

    if (negativeNumbers.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negativeNumbers.join(',')}',
      );
    }

    return allNumbers.reduce((a, b) => a + b);
  }
}
