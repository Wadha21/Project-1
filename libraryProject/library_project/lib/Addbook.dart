import 'dart:io';

import 'package:library_project/Book.dart';

class addbook{
  late List<Book> infoBooks;
  addbook(this.infoBooks);
  addNewbook(){
     print("Enter the book information:");
      print("Enter the book ID:");
      int bookid = int.parse(stdin.readLineSync()!);
      print("Enter the book title:");
      String booktitle = stdin.readLineSync()!;
      print("Enter the book author:");
      String bookauthor = stdin.readLineSync()!;
      print("Enter the publication year:");
      int publication = int.parse(stdin.readLineSync()!);
      print("Enter the number of copies:");
      int Numbercopies = int.parse(stdin.readLineSync()!);
      print("Enter the book price:");
      double bookprice = double.parse(stdin.readLineSync()!);
      print("Enter the book category:");
      String category = stdin.readLineSync()!;

      Book newbook = Book(
          id: bookid,
          title: booktitle,
          author: bookauthor,
          year: publication,
          copies: Numbercopies,
          price: bookprice,
          category: category);
          
      infoBooks.add(newbook);
      for (var element in infoBooks) {
        element.printBook();
      }
  }
}