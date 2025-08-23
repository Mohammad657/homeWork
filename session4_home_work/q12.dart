/*
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
*/
void main() {
  int userAge = 17;
  bool hasParent = true;
  String area = "restricted";

  if (userAge < 18) {
    if (hasParent) {
      print("Access granted");
    } else {
      print("Access denied");
    }
  } else {
    print("Access granted.");
  }

  switch (area) {
    case "general":
      print("Welcome to the general area.");
      break;
    case "restricted":
      print("Welcome to the restricted area.");
      break;
    default:
      print("Unknown area.");
  }
}
