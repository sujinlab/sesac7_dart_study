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
}