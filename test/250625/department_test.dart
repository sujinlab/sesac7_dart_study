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
      'dev${Random().nextInt(100)}',
      Employee('sujin', Random().nextInt(100)),
    );
    file.writeAsStringSync(department.toJsonString());

    //txt 파일읽어서, 인스탄스의 Json과 비교
    expect(
      department.toJsonString(),
      equals(File('asset/company.txt').readAsStringSync()),
    );
  });
}
