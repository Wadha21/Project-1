
class Book {
  late int? id;
  late String? title;
  late String? author;
  late int? year;
  late int? copies;
  late double? price;
  late String? category;

  Book(
      {required this.id,
      required this.title,
      required this.author,
      required this.year,
      required this.copies,
      required this.price,
      required this.category});
  printBook() {
    print(
        "id :$id   title:$title  author:$author  year:$year  copies:$copies price:$price  category:$category ");
  }
  
}
