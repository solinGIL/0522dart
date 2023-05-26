import 'tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;
  String color;
  int price;

  Book({
    required String name,
    required double value,
    required double weight,
    required this.isbn,
    required this.color,
    required this.price,
  }) : super(name, value, weight);

  @override
  void calculateValue() {
    value = weight * price * 0.5;
  }
}

void main() {
  var book = Book(
    name: '해리포터',
    value: 0,
    weight: 0.5,
    isbn: '9781234567890',
    color: '어두운색',
    price: 20,
  );
  book.calculateValue();
  print('책 값: ${book.value}');
}