import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidekick_libraly/bloc/create_book_event.dart';
import 'package:sidekick_libraly/bloc/create_book_state.dart';
import 'package:sidekick_libraly/data/models/book_model.dart';

class BookBloc extends Bloc<CreateBookEvent, CreateBookState> {
  BookBloc() : super(CreateBookInitial());

  @override
  Stream<CreateBookState> mapEventToState(CreateBookEvent event) async* {
    if (event is SaveBookEvent) {
      yield CreateBookLoading();
      try {
        // Simulate a network request to fetch book data from an API
        final response = await http.get(Uri.parse('YOUR_API_ENDPOINT'));
        final jsonData = json.decode(response.body);
        final book = BookModel.fromJson(jsonData);

        // Emit CreateBookSuccess state with the fetched book data
        yield CreateBookSuccess(book);
      } catch (e) {
        yield CreateBookFailure(e.toString());
      }
    }
  }
}
