class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age};
  }

  String toJsonString() {
    return '''"name": "$name", "age": $age''';
  }
}
