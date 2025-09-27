/*2 session_12
 2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the orde
 */
import 'dart:io';

class MenuItem {
  String name;
  double price;
  String category;

  MenuItem(this.name, this.price, this.category);
}

class Order {
  List<MenuItem> items = [];

  void addItem(MenuItem item) {
    items.add(item);
  }

  double getTotalPrice() {
    double totalPrice = 0;
    for (var item in items) {
      totalPrice += item.price;
    }
    return totalPrice;
  }

  void showOrder() {
    if (items.isEmpty) {
      print("Empty Order  .");
    } else {
      print("Your Order :");
      for (var item in items) {
        print("- ${item.name} : \$${item.price}");
      }
      print("Total Items Price: \$${getTotalPrice()}");
    }
  }
}

void main() {
  List<MenuItem> menu = [
    MenuItem(" Margreta", 8.5, "Pizza"),
    MenuItem("Burger", 7.0, "Sandwich"),
    MenuItem("Cola", 2.0, "Drinks"),
    MenuItem("Water", 1.0, "Drinks"),
  ];

  Order order = Order();

  while (true) {
    print("1.Menu Item ");
    print("2.Add Item");
    print("3.Show Items");
    print("4. Exit");
    stdout.write("Pick number to apply order ");
    var choice = stdin.readLineSync();

    if (choice == '1') {
      print("\n Items List:");
      for (int i = 0; i < menu.length; i++) {
        print(
          "${i + 1}. ${menu[i].name} - \$${menu[i].price} (${menu[i].category})",
        );
      }
    } else if (choice == '2') {
      print("\n choose item:");
      for (int i = 0; i < menu.length; i++) {
        print("${i + 1}. ${menu[i].name} - \$${menu[i].price}");
      }
      stdout.write(" Enter number of item: ");
      var input = int.tryParse(stdin.readLineSync() ?? '');
      if (input != null && input > 0 && input <= menu.length) {
        order.addItem(menu[input - 1]);
        print(" ${menu[input - 1].name}");
      } else {
        print("Invalid Input");
      }
    } else if (choice == '3') {
      order.showOrder();
    } else if (choice == '4') {
      print("Good bye");
      break;
    } else {
      print("Invalid Input , please try again.");
    }
  }
}
