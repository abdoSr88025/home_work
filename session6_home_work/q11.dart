/*
Q11
Create a function that takes a required product name and an optional discount percentage. If the
 discount is provided, print 'Product has discount %'. If not, print 'Product has no discount'
 */

void main() {
  makeDiscount(product_name: 'Smart phone');
}

void makeDiscount({required String product_name, double? discount_percentage}) {
  if (discount_percentage != null) {
    print('Product has discount %');
  } else {
    print('Product has no discount');
  }
}
