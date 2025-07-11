import 'package:modu_3_dart_study/250604/cleric.dart';
import 'package:test/test.dart';

void main() {
  group('Dart 02. 클래스', () {
    test('생성자 테스트', () {
      //given

      //when
      Cleric clericA = Cleric('아서스A', hp: 40, mp: 5);
      Cleric clericB = Cleric('아서스B', hp: 35);
      Cleric clericC = Cleric('아서스C');

      //then
      expect(clericA.name, '아서스A');
      expect(clericA.hp, 40);
      expect(clericA.mp, 5);

      expect(clericB.name, '아서스B');
      expect(clericB.hp, 35);
      expect(clericB.mp, Cleric.maxMP);

      expect(clericC.name, '아서스C');
      expect(clericC.hp, Cleric.maxHP);
      expect(clericC.mp, Cleric.maxMP);
    });
  });

  /* 
  group('Dart 01. 인스턴스와 클래스', () {
    //given(준비:테스트를 시작하기전에 시스템이 어떤 상태여야하는지 정의 / 초기조건과 상태를 설정,필요한데이터,필요한객체)
    Cleric cleric = Cleric('Cleric_A');

    test('selfAid 테스트', () {
      //when(실행:테스트하고자 하는 동작,이벤트 실행)
      int firstMP = cleric.mp;
      cleric.selfAid();

      //then(검증:기대한대로 동작했는가)
      expect(cleric.mp, equals(firstMP - 5));
      expect(cleric.hp, equals(Cleric.maxHp));
    });

    test('selfAid테스트, mp가 0일때 시도', () {
      //given: MP를 0으로 만들기 위한 준비
      int initialMP = cleric.mp;
      int selfAidCost = 5;
      int requiredCalls = (initialMP / selfAidCost).ceil();

      //when
      //mp 전부소진시킴
      for (int i = 0; i < requiredCalls; i++) {
        cleric.selfAid();
      }

      //then
      expect(cleric.mp, equals(0));
      expect(cleric.hp, equals(Cleric.maxHp));
    });

    test('pray 0초 테스트', () {
      //when
      int initialMP = cleric.mp;
      int recoveredMP = cleric.pray(0);

      //then
      expect(initialMP, equals(cleric.mp));
      expect(recoveredMP, equals(0));
    });

    test('pray 2초 테스트', () {
      //when
      int praySeconds = 2;
      int recoveredMP = cleric.pray(praySeconds);

      //then
      expect(
        recoveredMP,
        allOf([
          greaterThanOrEqualTo(praySeconds),
          lessThanOrEqualTo(praySeconds + 2),
        ]),
      );
    });
  });
  */
}
