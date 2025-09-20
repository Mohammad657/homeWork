/*
 Create a class Book with private fields _title and _pages.
 - Add setters: reject empty titles and pages ≤ 0.
 - Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
 - In main(), create a book, print its title and estimated reading time.
*/



void main() {
  Book book = Book('Dart Programming', 300);
  print('Book Title: ${book.title}');
  print('Estimated Reading Time: ${book.readingTime} minutes');

  book.title = ''; 
  book.pages = -50; 
  print('Book Title: ${book.title}');
  print('Estimated Reading Time: ${book.readingTime} minutes');
} 

class Book {
  String _title;
  int _pages;

  Book(this._title, this._pages);

  String get title => _title;
  int get readingTime => _pages * 2;

  set title(String value) {
    if (value.isNotEmpty) {
      _title = value;
    } else {
      print('Invalid title');
    }
  }

  set pages(int value) {
    if (value > 0) {
      _pages = value;
    } else {
      print('Invalid number of pages');
    }
  }
}