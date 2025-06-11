import 'package:modu_3_dart_study/250611/study.dart';

void main() {
  //연습문제2
  List<Map<String, dynamic>> students = [
    {'name': '홍길동', 'age': 20},
    {'name': '한석봉', 'age': 25},
  ];

  for (final student in students) {
    late String name;
    late int age;

    for (final entry in student.entries) {
      if (entry.key == 'name') {
        name = entry.value;
      } else {
        age = entry.value;
      }
    }
    print('$name의 나이는 $age다');
  }

  //연습문제3
  final people = <Person>[];
  people.add(Person('홍길동'));
  people.add(Person('한석봉'));

  for (final element in people) {
    print(element.name);
  }
}
