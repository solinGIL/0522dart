import 'tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;
  String color;
  int price;

  Computer({
    required String name,
    required double value,
    required double weight,
    required this.makerName,
    required this.color,
    required this.price,
  }) : super(name, value, weight);

  @override
  void calculateValue() {
    value = weight * price;
  }
}

void main() {
  var computer = Computer(
    name: '맥북',
    value: 0,
    weight: 2.5,
    makerName: '애플',
    color: '스그',
    price: 300,
  );
  computer.calculateValue();
  print('컴퓨터 값: ${computer.value}');
}