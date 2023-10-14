import 'dart:core';
import 'dart:io';
import 'package:library_project/Book.dart';
import 'package:library_project/Bookdata.dart';
import 'package:library_project/Deletebook.dart';
import 'package:library_project/Addbook.dart';
import 'package:library_project/Booksearch.dart';
import 'package:library_project/Editbook.dart';
import 'package:library_project/Purchebook.dart';

List<Book> infoBooks = [];
void main(List<String> arguments) {
  List<Book> infoBooks = loadAllData();
  infoBooks = loadAllData();
  purchebook purches = purchebook(infoBooks);
  addbook add = addbook(infoBooks);
  editbook edit = editbook(infoBooks);
  searchBook search = searchBook(infoBooks);
  delete deletebook = delete(infoBooks);
  bool isRun = true;
  String? choese = "0";
  while (isRun) {
    print("1:display all books");
    print("2:search for books");
    print("3:add new book");
    print("4:delete book");
    print("5:edit book");
    print("6:Buy new book");
    print("q:Exit");
    choese = stdin.readLineSync();
    if (choese == "1") {
      for (var element in infoBooks) {
        element.printBook();
      }
    }
    if (choese == "2") {
      while (isRun) {
        print('Please select which option:');
        print('1:Search by title');
        print('2:Search by author');
        print('3:Search by category');
        print('4:Exit');

        String? choose = stdin.readLineSync();
        switch (choose) {
          case '1':
            search.searchByTitle();
            break;
          case '2':
            search.searchByAuthor();
            break;
          case '3':
            search.searchByCategory();
            break;
          case '4':
            isRun = false;
            break;
          default:
            print('try again');
            break;
        }
        break;
      }
    }
    if (choese == "3") {
      add.addNewbook();
    }
    if (choese == "4") {
      deletebook.deletebook();
    } else if (choese == '5') {
      edit.editBook();
    } else if (choese == '6') {
      purches.purchaseBook();
    }
    if (choese == "q") {
      exit(0);
    }
  }
}

loadAllData() {
  List<Book> allBooks = [];
  for (var element in bookList) {
    int id = element['id'] ?? 0;
    String title = element['title'] ?? '';
    String author = element['author'] ?? '';
    int year = element['year'] ?? 0;
    int copies = element['copies'] ?? 0;
    double price = element['price'] ?? 0.0;
    String category = element['category'] ?? '';

    allBooks.add(Book(
        id: id,
        title: title,
        author: author,
        year: year,
        copies: copies,
        price: price,
        category: category));
  }
  return allBooks;
}
