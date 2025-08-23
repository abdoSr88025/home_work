/*
Exercise 4:
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.

*/
void main() {
  Map<String, String?> contact = {'name': 'Ali', 'phone': null};

  String? phone = contact['phone'];

  if (phone == null) {
    print("No phone number available.");
  } else {
    print("Phone: $phone");
  }

  contact['phone'] = '0123456789';
  phone = contact['phone'];

  print("Updated phone: $phone");
  print("Phone length: ${phone!.length}");
}
