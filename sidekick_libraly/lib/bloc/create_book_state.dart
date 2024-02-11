import 'package:sidekick_libraly/data/models/book_model.dart';

abstract class CreateBookState {}

class CreateBookInitial extends CreateBookState {}

class CreateBookLoading extends CreateBookState {}

class CreateBookSuccess extends CreateBookState {
  final BookModel book;

  CreateBookSuccess(this.book);
}

class CreateBookFailure extends CreateBookState {
  final String errorMessage;

  CreateBookFailure(this.errorMessage);
}
