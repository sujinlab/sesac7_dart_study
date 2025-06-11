// lib/person.dart

class Person {
  final String _name;

  // private 필드를 매개변수로 받는 생성자
  Person(this._name);

  void greet() {
    print('Hello, $_name');
  }
}
