import 'dart:io';
import 'package:library_project/Book.dart';

class delete{
  List<Book> infoBooks;
  delete(this.infoBooks);
  deletebook() {
  print("Enter the book ID:");
  int id = int.parse(stdin.readLineSync()!);
  int bookCounter = infoBooks.length;
  List<Book> book = infoBooks.where((element) => element.id == id).toList();
  if (book.isNotEmpty) {
    Book Removebook = book.first;
    infoBooks.remove(Removebook);
    print('The number of books updated: ${--bookCounter}');
  }
}
}