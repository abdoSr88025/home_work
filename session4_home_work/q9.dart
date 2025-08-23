/*
 Write a Dart program that formats a price tag string with a currency. Apply string methods such as
 toString, padLeft, and length to format and compare the results
 */
void main() {
  double price1 = 25.55;
  double price2 = 100.0;

  String formattedPrice1 = price1.toStringAsFixed(2);
  String formattedPrice2 = price2.toStringAsFixed(2);

  String priceTag1 = "\$" + formattedPrice1.toString();
  String priceTag2 = "\$" + formattedPrice2.toString();

  String paddedPrice1 = priceTag1.padLeft(10);
  String paddedPrice2 = priceTag2.padLeft(10);

  print("First Price : $priceTag1 Length is: ${priceTag1.length}");
  print("Second Price : $priceTag2 Length is: ${priceTag2.length}");

  print(paddedPrice1);
  print(paddedPrice2);

  if (priceTag1.length > priceTag2.length) {
    print("\nPrice 1 string is longer.");
  } else if (priceTag1.length < priceTag2.length) {
    print("\nPrice 2 string is longer.");
  } else {
    print("\nBoth price strings have equal length.");
  }
}
