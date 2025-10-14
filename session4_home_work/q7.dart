/*
Exercise 7:
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.

 */
void main() {
  String? path = '/products';

  switch (path) {
    case '/':
      print('Home Page ');
      break;

    case '/products':
      List<String>? products = ['Laptop', 'Phone', 'Tablet'];
      if (products.isEmpty) {
        print('No products');
      } else {
        print('products page ');
        print('Products =>$products');
      }
      break;

    case '/profile':
      Map<String, String?> profile = {'name': 'Abdelfattah', 'email': null};

      print('profile');
      print('name : ${profile['name'] ?? "null"}');
      print('email : ${profile['email'] ?? " Unavailable "}');
      break;

    default:
      print('Error');
  }
}
