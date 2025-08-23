/*
Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
*/

void main() {
  int a = 10;
  int b = 20;
  int c = 30;

  bool expr1 = a < b && b < c;
  bool expr2 = a == 10 || c == 40;
  bool expr3 = !(b > c);

  print("Expression 1: $expr1");
  print("Expression 2: $expr2");
  print("Expression 3: $expr3");

  if (expr1 || expr2 && expr3) {
    print("Rule passed");
  } else {
    print("Rule failed");
  }
}
