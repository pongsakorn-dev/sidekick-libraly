import 'package:sidekick_libraly/data/models/book_model.dart';

class BookMock {
  static List<BookModel> getBooks() {
    return [
      BookModel(id: 1, title: 'To Kill a Mockingbird', author: 'Harper Lee'),
      BookModel(id: 2, title: '1984', author: 'George Orwell'),
      BookModel(
          id: 3, title: 'The Great Gatsby', author: 'F. Scott Fitzgerald'),
      BookModel(id: 4, title: 'Pride and Prejudice', author: 'Jane Austen'),
      BookModel(
          id: 5, title: 'The Catcher in the Rye', author: 'J.D. Salinger'),
      // Add more books as needed
    ];
  }
}
