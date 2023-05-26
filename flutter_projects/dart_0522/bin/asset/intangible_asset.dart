import 'asset.dart';

class IntangibleAsset extends Asset {
  IntangibleAsset(String name, double value) : super(name, value);

  @override
  void calculateValue() {
    value += 100;
  }
}