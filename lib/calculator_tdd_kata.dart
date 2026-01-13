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
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
