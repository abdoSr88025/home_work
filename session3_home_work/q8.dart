/*
Exercise 8:
8. a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.
b) Print book['title'], update price, and add a new key 'author'.
c) Print all keys, values, and check if 'pages' exists as a key.

*/
void main() {
  //a)
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'pages': 120,
    'price': 19.99,
  };
  //b)
  print(book['title']);
  book['price'] = 25.00;
  book['author'] = 'Some One';
  //c)
  print(book.keys);
  print(book.values);
  print(book.containsKey('pages'));
}
