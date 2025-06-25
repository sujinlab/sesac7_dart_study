import 'dart:io';

import 'package:modu_3_dart_study/250625/employee.dart';

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return {'name': name, 'leader': leader.toJson()};
  }

  // String toJsonString() {
  //   return '''{"name": "$name", "leader": {${leader.toJsonString()}}}''';
  // }
}
