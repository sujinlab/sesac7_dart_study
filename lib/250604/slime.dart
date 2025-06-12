import 'package:modu_3_dart_study/250604/hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');

    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int poisonCount;

  PoisonSlime(super.suffix) : poisonCount = 5;

  @override
  void attack(Hero hero) {
    super.attack(hero);

    if (poisonCount > 0) {
      print('추가로, 독 포자를 살포했다!');

      int damage = hp ~/ 5;
      hp -= damage;
      print('$damage포인트의 데미지');

      poisonCount--;
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('A');

  poisonSlime.attack(Hero('heorX', 100));
  poisonSlime.attack(Hero('heorX', 100));
  poisonSlime.attack(Hero('heorX', 100));
  poisonSlime.attack(Hero('heorX', 100));
  poisonSlime.attack(Hero('heorX', 100));
  poisonSlime.attack(Hero('heorX', 100));
  poisonSlime.attack(Hero('heorX', 100));
}
