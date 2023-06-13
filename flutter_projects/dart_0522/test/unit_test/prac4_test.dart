import 'package:test/test.dart';
import 'package:dart_0522/unit_test/exam1234/repo/prac4.dart';  // reverseString 함수가 정의된 파일

void main() {
  group('reverseString', () {
    var reverse = Reverse();
    test('거꾸로', () {
     // expect(reverse.reverseString("Hello"), equals("olleH"));
      var result = reverse.reverseString("Hello");
      print('Input: "Hello", Output: "$result"');  // 추가된 print 문
      expect(result, equals("olle"));
    });
  });
}
