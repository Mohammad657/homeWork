/*
Q6. Number Guessing (3 Tries) 
- Generate a random number between 1 and 20. 
- Let the user guess up to 3 times. If they fail, reveal the correct number.
*/

import 'dart:io';
import 'dart:math';

void main() {
  int secretNumber = Random().nextInt(20) + 1;
  bool guessedCorrectly = false;

  for (int attempt = 1; attempt <= 3; attempt++) {
    stdout.write('Attempt $attempt: Enter your guess: ');
    int guess = int.parse(stdin.readLineSync()!);   

    if (guess < 1 || guess > 20) {
      print('Please enter a valid number between 1 and 20.');
      attempt--;
    }

    if (guess == secretNumber) {
      print(' Correct! You guessed the number! ');
      guessedCorrectly = true;
      break;
    } else {
      print("incorrect guess.");
    }
  }

  if (!guessedCorrectly) {
    print('\n Out of attempts. The correct number was: $secretNumber');
  }
}