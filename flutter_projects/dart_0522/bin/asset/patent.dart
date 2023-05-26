import 'intangible_asset.dart';

class Patent extends IntangibleAsset {
  String description;

  Patent({
    required String name,
    required double value,
    required this.description,
  }) : super(name, value);

  @override
  void calculateValue() {
    value += 500;
  }
}

void main() {
  var patent = Patent(
    name: '무형자산',
    value: 0,
    description: '특징',
  );
  patent.calculateValue();
  print('무형자산 값: ${patent.value}');
}
