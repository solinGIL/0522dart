// 이 클래스를 이용해, 다음 사양을 따르는 PoisonSlime 클래스를 작성하시오
// 독 슬라임(PoisonSlime) 은, 슬라임 (Slime) 중에서도 특히 “독 공격" 이 되는 것
// PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스임
// PoisonSlime poisonSlime = PoisonSlime(‘A’);
// PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
// PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
// 우선, “보통 슬라임과 같은 공격"을 한다
// “독 공격의 남은 횟수"가 0이 아니면 다음을 추가로 수행한다
// 화면에 “추가로, 독 포자를 살포했다!” 를 표시
// 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
// “독 공격의 남은 횟수" 를 1 감소 시킨다

import '0523slime.dart';
import '0523hero.dart';

class PoisonSlime extends Slime {
  int poisonAttack = 5;

  PoisonSlime(String suffix) : super(suffix);

  @override
  void attack(hero) {
    super.attack(hero); // Slime클래스에 attack 실행.
    if(poisonAttack > 0) { // 이 조건이 참일 경우에만 독 공격 수행
      print('추가로, 독 포자를 살포했다!');
      int poisonDamage = (hero.hp / 5).toInt(); // 용사의 체력을 5로 나눈 뒤 정수로 바꿔줌.
      hero.hp -= poisonAttack; // hero체력에서 독데미지를 뺌
      print('$poisonDamage 포인트의 데미지');
      poisonAttack --;
    }
  }
}

void main() {
  Hero hero = Hero(name: '용사', hp: 50);
  PoisonSlime poisonSlime = PoisonSlime('포이즌몬');
  poisonSlime.attack(hero);
  // print('용사의 남은 체력: ${hero.hp}');
}