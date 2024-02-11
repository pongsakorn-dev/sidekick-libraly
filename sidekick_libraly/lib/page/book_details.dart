import 'package:flutter/material.dart';

class BookDetail extends StatefulWidget {
  final String title;
  final String author;

  const BookDetail({
    Key? key,
    required this.title,
    required this.author,
  }) : super(key: key);

  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Book Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Title: ${widget.title}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(width: 10),
            Text(
              'Author: ${widget.author}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
