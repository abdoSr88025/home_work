/*
Q5
 Create a class Book with private fields _title and _pages.
 - Add setters: reject empty titles and pages ≤ 0.
 - Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
 - In main(), create a book, print its title and estimated reading time.
 */

class Book {
  String? _title;
  int? _pages;
  String get title => _title!;
  int get readingTime => _pages! * 2;

  set title(String value) {
    if (value.isEmpty) {
      print('title is empty');
    } else {
      _title = value;
    }
  }

  set pages(int value) {
    if (value <= 0) {
      print('Invalid value ');
    } else {
      _pages = value;
    }
  }
}

void main() {
  Book book = Book();

  book.title = 'Programming Skills';
  book.pages = 300;

  print('Book Title: ${book.title}');
  print('Estimated Reading Time: ${book.readingTime} minutes');
}
