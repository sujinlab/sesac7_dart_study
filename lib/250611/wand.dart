class Wand {
  String name;
  double power;

  Wand({required this.name, required this.power}) {
    if (name.length < 3) {
      throw Exception('지팡이의 이름은 3문자이상');
    }

    if (power < 0.5 || power > 100) {
      throw Exception('지팡이의 마력은 0.5이상 100.0이하여야 한다');
    }
  }
}
