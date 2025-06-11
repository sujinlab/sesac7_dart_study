import 'package:modu_3_dart_study/250611/wand.dart';

class Wizard {
  String name;
  int hp;
  int mp;
  Wand? wand;

  Wizard(this.name, this.hp, this.mp, this.wand) {
    //마법사 이름은 널일 수 없고, 반드시 3문자이상
    if (name.length < 3) {
      throw Exception('이름은 3문자이상');
    }

    //음수대신 0으로
    if (hp < 0) {
      hp = 0;
    }

    //0이상이어야함
    if (mp < 0) {
      throw Exception('mp는 0이상이어야한다');
    }

    //null이면 안됨
    if (wand == null) {
      throw Exception('지팡이는 널일 수 없다');
    }
  }
}
