# calculator_tdd_kata
A sample Dart project of the String Calculator demonstrating Test-Driven Development (TDD) principles. The project showcases how to design, implement, and test a simple String Calculations

## Overview
The project follows the **Test-Driven Development (TDD)** principles :-
1. RED: Write failing tests first.
2. GREEN: Implement the minimum code to make tests pass.
3. REFACTOR: Refactor while keeping tests green.

The project manages the String calculation by the operations as :-
- Adding empty Strings,     e.g. add('')
- Adding single number Strings  e.g add('1')
- Adding comma seperated two number Strings     e.g add('1,5')
- Adding mutiple comma seperated Strings    e.g add('1,2,3,4')
- Adding number Strings with new line character     e.g add('1\n2,3')
- Handles other delimiters with prefix // in numbers    e.g add('//;\n1;2')
- Throwing exception for negative number    e.g add('1,2,3,-4,5')
- Throwing exception for multiple negative numbers  e.g add('1,-2,3,-4,5,-6')
- Summing by ignoring numbers greater then 1000 e.g     add('2,1001')
- Numbers having multi-character delimiter brackets, 3 asterisks with prefix //     e.g add('//[***]\n1\***2\***3')
- Adding number Strings including numbers along with special characters & delimiters    e.g add('//[*][%]\n1*2%3')
- Adding number Strings including numbers along with special characters & delimiters in groups  e.g add('//[\**][%%]\n1\**2%%3')

---

## Tech Stack
- **lints** ^6.0.0 : An IDE for writing dart code
- **test** ^1.25.6 : provides a standard way of writing and running tests in Dart.

---

## Project Structure

```
.
├── lib
│   └── calculator_tdd_kata.dart	         # Class that handles calculations of List of numbers of type String
│
├── screenshots	                    
│   └── Screenshot-Tests-Passed.png          # Png image showing test report of all test cases as passed
│
├── test	                    
│   └── calculator_tdd_kata_test.dart        # Unit tests for class StringCalculator		
│
├── analysis_options.yaml			         # Link rules
├── pubspec.yaml			                 # Project Dependencies
└── README.md				                 # Project README
```

## TDD Workflow
- **Step 1**: Write a failing test (e.g. returning zero for empty string).
- **Step 2**: Implement the method body under StringCalculator minimally to satisfy the test.
- **Step 3**: Run tests and ensure they pass.
- **Step 4**: Refactor code for clarity and maintainability.
- **Step 5**: Repeat for each feature (Strings with +ve,-ve, delimiters & other characters).

## Test Results

```
✓ returns 0 for empty string
✓ returns number for single number
✓ returns sum of 2 comma separated numbers
✓ returns sum of multiple numbers
✓ handles new lines in numbers
✓ handles other delimiters with prefix // in numbers
✓ throws exception for negative number
✓ throws exception multiple negative numbers
✓ test ignore numbers greater then 1000
✓ test numbers having multi-character delimiter brackets, *** with prefix //
✓ test numbers with multiple delimiters
✓ test numbers with multiple delimiters in groups

All 12 tests passed!
```

## Screenshots
![screenshot](imageFolder/screenshot.png)

---

## Getting Started

### Prerequisites
- Dart SDK installed

### Installation
Install dependencies: `flutter pub get`

# Run tests
flutter test