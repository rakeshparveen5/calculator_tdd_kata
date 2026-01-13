// A class that performs addition operations on the input of numbers of Type String
class StringCalculator {
  // Method that performs addition on numbers
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    // Default delimiter is comma & rest for double slashes strings, it will identify with below if block
    List<String> delimiters = [','];
    String numbersPart = numbers;
    if (numbers.startsWith('//')) {
      final newlineIndex = numbers.indexOf('\n');
      final delimiterParts = numbers.substring(2, newlineIndex);
      final regex = RegExp(r'\[([^\]]+)\]');
      delimiters = delimiterParts.startsWith('[')
          ? regex.allMatches(delimiterParts).map((m) => m.group(1)!).toList()
          : [delimiterParts];
      numbersPart = numbers.substring(newlineIndex + 1);
    }

    String normalizedNumbers = numbersPart.replaceAll('\n', delimiters.first);
    for (var d in delimiters.skip(1)) {
      normalizedNumbers = normalizedNumbers.replaceAll(d, delimiters.first);
    }
    final parts = normalizedNumbers.split(delimiters.first);

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
