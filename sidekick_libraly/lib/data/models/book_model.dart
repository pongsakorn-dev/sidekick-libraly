import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookModel {
  final int id;
  final String title;
  final String author;
  final String isbn;

  BookModel({
    required this.id,
    required this.title,
    required this.author,
    required this.isbn,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      isbn: json['isbn'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'isbn': isbn,
    };
  }
}
