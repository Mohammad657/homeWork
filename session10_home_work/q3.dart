/*
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
*/

void main() {
  Grade grade = Grade();
  
  grade.score = 85;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
  
  grade.score = 45;
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
  
  grade.score = 110; 
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
  
  grade.score = -10; 
  print('Score: ${grade.score}, Pass: ${grade.isPass}');
}

class Grade {
  int _score = 0;

  set score(int value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print('Invalid score');
    }
  }

  int get score => _score;

  bool get isPass => _score >= 50;
}