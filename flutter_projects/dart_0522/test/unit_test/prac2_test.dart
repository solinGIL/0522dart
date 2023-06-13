import 'package:test/test.dart';
import 'package:dart_0522/unit_test/exam1234/repo/prac2.dart';  // isEven 함수가 정의된 파일

void main() {
  group('IsEven', () {
    var check = IsEven();
    test('트루넘버반환', () {
      expect(check.isEven(2), equals(true));
    });

    test('폴스넘버반환', () {
      expect(check.isEven(1), equals(false));
    });
  });
}