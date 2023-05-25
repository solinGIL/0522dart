import '0523sword.dart';

class Hero {
  String name = '';
  int hp = 100;
  // 칼이 있을 수도 있고 없을 수도 있는 그런 유동적인 모습은 null을 쓸 수 있다.
  Sword? sword;

  // 생성자
  Hero({required this.name, required this.hp});

  void attack() {
    // 리턴 타입이 있으면 void가 아니라 데이터타입을 적어줘야함
    if(sword == null) {
      print('주먹으로 때린다');
    } else {
      print('${sword?.name}칼로 ${sword?.damage} 만큼 때렸습니다');
    }
  }

  void run() {
    // ㅋㅋ 타입 자리에 아무것도 안적으면 다이나믹 나옴
  }

  void sleep() {
    hp = 100;
    // 스트링 인터폴레이션
    // $쪽에 중괄호를 감싸면 수식
    print('$name은 잠을 자고 회복했다.');
  }
}