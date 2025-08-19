/*

Exercise 10:
after each.
10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
b) Create var greeting = 'Hi'; change it to another String and print.
c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).

*/

void main() {
  // a)
  dynamic value = 10;
  print(value);

  value = 'Now I am a String';
  print(value);

  var fixedValue = 20;
  print(fixedValue);
  // fixedValue = 'Trying to assign a String';
  /*
          A value of type 'String' can't be assigned to a variable of type 'int'.
          Try changing the type of the variable, or casting the right-hand type to 'int'.
  */

  // b)
  var greeting = 'Hi';
  greeting = 'Hello there!';
  print(greeting);

  // c)
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
