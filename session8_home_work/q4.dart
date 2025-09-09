/*
 Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. 
Give price a default value of 0. - Create two objects: one with a custom price and one with the
 default price. Print their details

*/
class Product {
  String? name;
  double? price;
  Product(this.name, [this.price = 0]);
  void showDetails() {
    print("Product name: $name, Price: $price");
  }
}

void main() {
  Product product1 = Product('Laptop');
  product1.showDetails();
  Product product2 = Product('PC', 1500.0);
  product2.showDetails();
}
