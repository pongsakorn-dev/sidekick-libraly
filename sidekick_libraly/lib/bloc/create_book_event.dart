abstract class CreateBookEvent {}

class SaveBookEvent extends CreateBookEvent {
  final String title;
  final String author;

  SaveBookEvent(this.title, this.author);
}
