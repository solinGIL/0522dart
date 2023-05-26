import 'asset.dart';
import 'thing.dart';

class TangibleAsset extends Asset implements Thing {
  double _weight;

  TangibleAsset(String name, double value, this._weight)
      : super(name, value);

  @override
  double get weight => _weight;

  @override
  set weight(double weight) => _weight = weight;

  @override
  void calculateValue() {
    value = _weight * 10;
  }
}