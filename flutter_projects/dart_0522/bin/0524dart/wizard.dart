import './wand.dart';

class Wizard {
  String name;
  Wand wand;
  int mp;
  int hp;

  Wizard({required this.name, required this.wand, required this.mp, required this.hp}) {
    if (name == null || name.length < 3) {
      throw Exception('에러 메시지: 이름은 null이거나 3문자 이상이어야 합니다.');
    }

    if (wand == null) {
      throw Exception('에러 메시지: 마법사의 지팡이는 null이 될 수 없습니다.');
    }

    if (mp < 0) {
      throw Exception('에러 메시지: 마법사의 MP는 0 이상이어야 합니다.');
    }

    if (hp < 0) {
      hp = 0; // HP가 음수일 경우 0으로 대체합니다.
      print('0으로 대체되었습니다.');
    }
  }
}

void main() {
  try {
    var wand = Wand(name: 'Fire Wand', power: 80.0);
    var wizard = Wizard(name: 'Gandalf', wand: wand, mp: 50, hp: 0);

    // 코드 실행
  } catch (e) {
    print(e);
  }
}