//Q2- Describe the difference between var, dynamic, and explicitly typed variables in Dart.

void main() {
  //Difference between var, dynamic, and explicitly typed variables in Dart
  //-------------------------------------------
  //var:
  //The type is decided once at compile time based on the value you assign first. After that, you cannot change the type.

  //Example:
  var name = "Alice"; // type is String now
  // name = 10; // Error! Can't change to int

  //-------------------------------------------

  //dynamic:
  //The type can change at runtime.
  //Dart won’t check types strictly, so you must be careful.

  //Example:

  dynamic value = "Hello";
  value = 123; // Allowed
  
  //-------------------------------------------

  //Explicit type (e.g., int, String):
  //You tell Dart exactly what type the variable should have.
  //It cannot hold any other type.

  //Example:

  String city = "London";
  // city = 20; // Error! Must stay a String
}
