/*
Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.

*/

void main() {
  String path = '/products';

  switch (path) {
    case '/':
      print("Welcome to the homepage!");
      break;
    case '/products':
      print("Here are our products.");
      break;
    case '/profile':
      print("This is your profile.");
      break;
    default:
      print("404 Not Found");
  }
}
