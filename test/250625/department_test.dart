import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:modu_3_dart_study/250625/department.dart';
import 'package:modu_3_dart_study/250625/employee.dart';
import 'package:test/test.dart';

void main() {
  test('Department 직렬화 테스트', () {
    //파일이 있으면 삭제
    final file = File('asset/company.txt');
    if (file.existsSync()) {
      print('deleted company.txt');
      file.delete();
    }

    //파일에 json쓰기
    final department = Department(
      'dev2',
      Employee('sujin', 45),
    );
    file.writeAsStringSync(jsonEncode(department.toJson()));

    //txt 파일읽어서, 인스탄스의 Json과 비교
    expect(
      jsonEncode(department.toJson()),
      equals(File('asset/company.txt').readAsStringSync()),
    );
  });
}
