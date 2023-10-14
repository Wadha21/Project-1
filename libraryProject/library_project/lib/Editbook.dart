import 'dart:io';

import 'package:library_project/Book.dart';

class editbook{
  late List<Book> infoBooks;
  editbook(this.infoBooks);
editBook() {
  print('Enter the bookid to update:');
  int? bookId = int.tryParse(stdin.readLineSync() ?? '');
  Book book = infoBooks.firstWhere((book) => book.id == bookId);
  print('Enter the new title:');
  String? newTitle = stdin.readLineSync();
  print('Enter the new author:');
  String? newAuthor = stdin.readLineSync();
  print('Enter the new price:');
  double? newPrice = double.tryParse(stdin.readLineSync() ?? '');

  if (newTitle != null && newTitle.isNotEmpty) {
    book.title = newTitle;
  }
  if (newAuthor != null && newAuthor.isNotEmpty) {
    book.author = newAuthor;
  }
  if (newPrice != null ) {
    book.price = newPrice;
  }
  print('updated successfully');
}
}