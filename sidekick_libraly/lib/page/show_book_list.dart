import 'package:flutter/material.dart';
import 'package:sidekick_libraly/data/mocks/book_mock.dart';
import 'package:sidekick_libraly/data/models/book_model.dart'; // Import your BookModel class
import 'package:sidekick_libraly/page/book_details.dart';

class ShowBookList extends StatelessWidget {
  const ShowBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BookModel> books = BookMock.getBooks(); // Fetch mock data

    return Expanded(
      child: Scaffold(
        body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetail(
                      title: book.title,
                      author: book.author,
                    ),
                  ),
                );
              },
              child: ListTile(
                title: Text(book.title),
                subtitle: Text(book.author),
                // Add more details if needed
              ),
            );
          },
        ),
      ),
    );
  }
}
