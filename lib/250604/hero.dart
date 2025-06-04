class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack() {
    print('$name attacks with hp $hp!');
  }

  void run() {
    print('$name run with hp $hp!');
  }

  void sleep() {
    print('$name sleeps to recover strength.');
  }
}




