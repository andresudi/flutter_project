void main() {
  void fizzBuzz(int n) {
    // iterate from 1 to n
    for (int i = 0; i <= n; i++) {
      // If the number is a multiple of 3 and 5
      if (i % 3 == 0 && i % 5 == 0) {
        print("fizzBuzz");
        // If the number is a multiple of 3
      } else if (i % 3 == 0) {
        print("fizz");
        // If the number is a multiple of 5
      } else if (i % 5 == 0) {
        print("buzz");
        // Others print i
      } else {
        print(i);
      }
    }
  }

  // fizzBuzz(15);

  List<int> removeDuplicates(List<int> array) {
    // declare empty key value object
    Map<int, bool> uniqueMap = {};
    // declare empty array will used on result
    List<int> uniqueList = [];
    // iterate number in array
    for (int number in array) {
      // check if number is not exist in uniqueMap
      if (!uniqueMap.containsKey(number)) {
        // Add the number to the map
        uniqueMap[number] = true;
        // Add the number to the unique list
        uniqueList.add(number);
      }
    }

    return uniqueList;
  }

  // print(removeDuplicates([1,2,3,4,4,4,4,5,6,6,6,6]));

  bool isBracketValidOrNot(String input) {
    // split input
    List<String> splitResult = input.split('');
    int count = 0;

    for (String char in splitResult) {
      // count +1 if found char '(' in splitResult
      if (char == '(') {
        count++;
        // count -1 if found char ')' in splitResult
      } else if (char == ')') {
        count--;
      }

      // if pair "()" not found
      if (count < 0) {
        return false;
      }
    }

    return count == 0;
  }

  // String case1 = "(())";
  // String case2 = "()()";
  // String case3 = "()()(";
  // String case4 = "(";

  // print("Bracket case 1 -> ${isBracketValidOrNot(case1)}");
  // print("Bracket case 2 -> ${isBracketValidOrNot(case2)}");
  // print("Bracket case 3 -> ${isBracketValidOrNot(case3)}");
  // print("Bracket case 4 -> ${isBracketValidOrNot(case4)}");

  List<int> breakTheRecords(List<int> scores) {
    // set the initial highest score to the first score in the array
    int highestScore = scores[0];
    // set the initial lowest score to the first score in the array
    int lowestScore = scores[0];

    // Initialize variables to count the number of times records are broken
    int highestScoreBreaks = 0;
    int lowestScoreBreaks = 0;

    // iterate through the array of scores starting from the second index
    for (int i = 1; i < scores.length; i++) {
      if (scores[i] > highestScore) {
        // If the current score is higher than the highest score recorded so far
        highestScore = scores[i];
        highestScoreBreaks++;
      } else if (scores[i] < lowestScore) {
        // If the current score is lower than the lowest score recorded so far
        lowestScore = scores[i];
        lowestScoreBreaks++;
      }
    }

    return [highestScoreBreaks, lowestScoreBreaks];
  }

  List<int> gameScores = [10, 5, 20, 20, 4, 5, 2, 25, 1];

  // print(breakTheRecords(gameScores)); // [2,4]

  int fibonacci(int n) {
    // init the sequence with the first two Fibonacci numbers
    List<int> fibonacciSequence = [0, 1];

    // return the sequence up to n elements
    if (n <= 1) {
      return fibonacciSequence.sublist(0, n + 1)[n];
    }

    for (int i = 2; i <= n; i++) {
      // calculate the next Fibonacci number
      int nextFib = fibonacciSequence[i - 1] +
          fibonacciSequence[i - 2]; 
      // add the next number to the sequence
      fibonacciSequence.add(nextFib); 
    }

    // return n index of fibonacci
    return fibonacciSequence[n]; 
  }

  print(fibonacci(0));
  print(fibonacci(1));
  print(fibonacci(3));
  print(fibonacci(4));
}
