import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;

  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);


  void selfAid() {
    if( mp >= 5 ) {
      mp -= 5;
      hp = maxHp;
      print('$name casts Self Aid! HP restored to $hp.');
    } else {
      print('$name does not have enough MP to cast Self Aid.');
    } 
  }

  int pray(int praySeconds) {

    //기도시간이 0이면, 회복못함
    if( praySeconds <= 0 ) {
      return 0;
    }

    Random random = Random();
    int randomNumber = random.nextInt(3); //0~2
    
    //회복된 MP
    int recoveredMP = praySeconds + randomNumber;

    mp += recoveredMP;

    //최대mp보다 회복할 순 없음.
    if( mp > maxMp ) {
      mp = maxMp;
    }

    return recoveredMP;
  }
}