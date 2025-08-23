/*
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/

void main() {
  double price = 100.0;
  bool isStudent = true;
  bool hasCoupon = false;

  if (isStudent) {
    price *= 0.8; 
  } else if (hasCoupon) {
    price *= 0.9; 
  } else if (price > 150) {
    price *= 0.85; 
  }

  print("The final price is: \$${price}");
}