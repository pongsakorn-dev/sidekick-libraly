import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidekick_libraly/bloc/create_book_bloc.dart';
import 'package:sidekick_libraly/bloc/create_book_event.dart';
import 'package:sidekick_libraly/bloc/create_book_state.dart';

class CreateBookPage extends StatefulWidget {
  const CreateBookPage({Key? key}) : super(key: key);

  @override
  State<CreateBookPage> createState() => _CreateBookPageState();
}

class _CreateBookPageState extends State<CreateBookPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _isbnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final contentWidth = MediaQuery.of(context).size.width / 2;
    return BlocProvider(
      create: (context) => BookBloc(),
      child: BlocBuilder<BookBloc, CreateBookState>(
        builder: (context, state) {
          if (state is CreateBookLoading) {
            return CircularProgressIndicator();
          } else if (state is CreateBookSuccess) {
            final book = state.book;
            return Text(
                'Book created successfully: ${book.title} by ${book.author}');
          } else if (state is CreateBookFailure) {
            return Text('Failed to create book: ${state.errorMessage}');
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    controller: _titleController,
                    decoration: InputDecoration(labelText: 'Title')),
                TextField(
                    controller: _authorController,
                    decoration: InputDecoration(labelText: 'Author')),
                TextField(
                    controller: _isbnController,
                    decoration: InputDecoration(labelText: 'ISBN')),
                TextButton(
                  onPressed: () {
                    BlocProvider.of<BookBloc>(context).add(
                      SaveBookEvent(
                        _titleController.text,
                        _authorController.text,
                        _isbnController.text,
                      ),
                    );
                  },
                  child: Text("SAVE"),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
