/*
 Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
 have a parent. Use a switch statement on an area variable (general or restricted) to decide what
 message to print
 */

void main() {
  int age = 16;
  bool hasParent = true;
  String area = 'restricted';

  if (age < 18 && !hasParent) {
    print('Access denied: You need a parent to enter.');
  }

  switch (area) {
    case 'general':
      print('Access granted: Welcome to the general area.');
      break;

    case 'restricted':
      if (age >= 18 || hasParent) {
        print('Access granted: You may enter the restricted area.');
      } else {
        print('Access denied: Restricted area requires an adult or a parent.');
      }
      break;

    default:
      print('Invalid area selected.');
  }
}
