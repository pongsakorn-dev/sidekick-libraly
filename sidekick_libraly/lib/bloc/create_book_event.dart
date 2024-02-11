abstract class CreateBookEvent {}

class SaveBookEvent extends CreateBookEvent {
  final String title;
  final String author;
  final String isbn;

  SaveBookEvent(this.title, this.author, this.isbn);
}
