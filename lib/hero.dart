class Hero {
  String name;
  String hp;

  Hero(this.name, this.hp);

  void attack() {
    print('$name attacks with power $hp!');
  }

  void run() {
    print('$name defends with power $hp!');
  }

  void sleep() {
    print('$name sleeps to recover strength.');
  }
}




