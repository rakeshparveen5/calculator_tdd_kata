// A class that performs addition operations on the input of numbers of Type String
class StringCalculator {
  // Method that performs addition on numbers
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    final parts = numbers.split(',');
    var result = 0;
    for (int i = 0; i < parts.length; i++) {
      result += int.parse(parts[i]);
    }
    return result;
  }
}
