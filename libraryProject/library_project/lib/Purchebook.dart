import 'dart:io';
import 'package:library_project/Book.dart';
class purchebook{
  late List<Book> infoBooks;
  purchebook(this.infoBooks);
  purchaseBook() {
  bool isrun = true;
  List<int?> totalbooks = [];
  List<double> bookprice = [];
  double cost = 0;
  while (isrun) {
    print('select an option:');
    print('1:Add book');
    print('2:Exit');
    String? input = stdin.readLineSync();
    switch (input) {
      case '1':
        print('Enter the book id that you want to purchase:');
        int? bookId = int.tryParse(stdin.readLineSync() ?? '');
        Book? book = infoBooks.firstWhere((element) => element.id == bookId);
        if (book.copies! <= 0) {
          print('out of stack');
          return;
        }
        book.copies = book.copies! - 1;
        cost += book.price!;
        totalbooks.add(bookId);
        bookprice.add(book.price!);
        continue;
      case '2':
        isrun = false;
        break;
      default:
        print('try again');
        break;
    }
    print('purchased successfully');
    if (totalbooks.isNotEmpty) {
      invoice(totalbooks: totalbooks, cost: cost, bookprice: bookprice);
    }
    break;
  }
}

invoice(
    {required List<int?> totalbooks,
    required double cost,
    required List<double> bookprice}) {
  print('------------------');
  print('|||| Invoice ||||');
  print('------------------');
  print('Book ID: ${totalbooks}');
  print("Book price :${bookprice}");
  print('Book cost: ${cost}');
}
}