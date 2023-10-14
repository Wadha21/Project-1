import 'dart:io';

import 'package:library_project/Book.dart';

class searchBook {
  late List<Book> infoBooks;
  searchBook(this.infoBooks);

  searchByTitle() {
    print('Enter the title of the book:');
    String? title = stdin.readLineSync();
    bool isMatched = false;
    for (Book book in infoBooks) {
      if (book.title == title) {
        print('matching');
        isMatched = true;
        break;
      }
    }
    if (!isMatched) {
      print('not matching');
    }
  }

  searchByAuthor() {
    print('Enter the author of the book:');
    String? author = stdin.readLineSync();
    bool isMatched = false;
    for (Book book in infoBooks) {
      if (book.author == author) {
        print('matching');
        isMatched = true;
        break;
      }
    }
    if (!isMatched) {
      print('not matching');
    }
  }

  searchByCategory() {
    print('Enter the Category of the book:');
    String? category = stdin.readLineSync();
    bool isMatched = false;
    for (Book book in infoBooks) {
      if (book.category == category) {
        print('matching');
        isMatched = true;
        break;
      }
    }
    if (!isMatched) {
      print('not matching');
    }
  }
}
