class BookModel {
  final int id;
  final String title;
  final String author;

  BookModel({
    required this.id,
    required this.title,
    required this.author,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'],
      title: json['title'],
      author: json['author'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
    };
  }
}
