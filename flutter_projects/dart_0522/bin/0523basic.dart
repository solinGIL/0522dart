import '0523hero.dart';
import '0523sword.dart';

void main() {
  // 새로 인스턴스를 만듦, 뉴를 사용 안하는게 국룰임
  Hero hero = Hero(name: '슈퍼맨', hp: 100);

  hero.attack();
  hero.sleep();

  // 이렇게 쓰면 순서 안외워도됨. 위 히어로는 외워야함.
  final sword = Sword(name: '불의검', damage: 100);
  hero.sword = sword;
}