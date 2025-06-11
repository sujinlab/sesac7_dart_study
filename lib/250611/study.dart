void main() {
  A a = A(0);

  print(a.energy);
  print(a._energy);

  Person person = Person('수진');
  print(person.name);
}

class A {
  int _energy;
  int get energy => _energy;

  set energy(int value) {
    if (value > 0) {
      _energy = value;
    } else {
      _energy = 0;
      print('0이다!');
      throw Exception('0 Exception');
    }
  }

  //private변수를 매개변수로 사용
  A(this._energy);
}

class Person {
  final String _name;

  String get name => _name;

  Person(this._name);
}
