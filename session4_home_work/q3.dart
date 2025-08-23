/*
Exercise 3:
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
*/
void main() {
  double price = 120.0;
  bool isStudent = true;
  bool hasCoupon = false;

  double discount = 0.0;

  if (isStudent) {
    discount = 0.15;
    price = price - (price * discount);
  } else if (hasCoupon) {
    discount = 0.10;
    price = price - (price * discount);
  } else if (price > 100) {
    discount = 0.05;
    price = price - (price * discount);
  }
  print("Final price: ${price.toStringAsFixed(2)}");
}
