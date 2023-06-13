import 'package:test/test.dart';
import 'package:dart_0522/unit_test/exam1234/repo/prac3.dart';  // findMax 함수가 정의된 파일

void main() {
  group('findMax', () {
    var findMax = FindMax();
    test('최대값', () {
      expect(findMax.findMax([2, 5, 1, 9, 3]), equals(9));
    });
  });
}