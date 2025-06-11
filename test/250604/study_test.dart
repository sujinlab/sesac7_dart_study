import 'package:test/test.dart';
import 'package:modu_3_dart_study/250611/study.dart';

void main() {
  group('캡슐화', () {
    test('throw테스트', () {
      //given
      A a = A(1);

      //when
      //a.energy = 0;

      //then
      expect(() => a.energy = 0, throwsException);
    });
  });
}
