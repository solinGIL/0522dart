import 'package:dart_0522/unit_test/exam1234/repo/prac1.dart';
import 'package:test/test.dart';

void main() {
  group('Bank', () {
    test('fromJson', () {
      var json = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };
      Bank bank = Bank.fromJson(json);
      expect(bank.name, equals("홍길동"));
      expect(bank.address, equals("서울시 어쩌구 저쩌구"));
      expect(bank.phone, equals("010-1111-2222"));
    });

    test('toJson', () {
      Bank bank = Bank("홍길동", "서울시 어쩌구 저쩌구", "010-1111-2222");
      var json = bank.toJson();
      expect(json["name"], equals("홍길동"));
      expect(json["address"], equals("서울시 어쩌구 저쩌구"));
      expect(json["phone"], equals("010-1111-2222"));
    });
  });
}
