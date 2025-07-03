import 'package:modu_3_dart_study/250703/data_source/user_data_source.dart';
import 'package:modu_3_dart_study/250703/repository/user_repository_impl.dart';
import 'package:test/test.dart';

import 'mock/mock_user_data_source_impl.dart';

void main() {
  group('UserRepositoryImpl 테스트', () {
    test('getUsers()', () async {
      final UserDataSource dataSource = MockUserDataSourceImpl();
      final userRepo = UserRepositoryImpl(dataSource);

      expect((await userRepo.getUsers()).length, 5);
    });

    test('getCompletedUsers()', () async {
      final UserDataSource dataSource = MockUserDataSourceImpl();
      final userRepo = UserRepositoryImpl(dataSource);
      final userList = await userRepo.getUsersTop10ByUserName();
      userList.forEach(print);

      expect(userList.length, 5);

      //Leanne Graham
      //Ervin Howell
      //Clementine Bauch
      //Patricia Lebsack
      //
      expect(userList[0].name, 'Clementine Bauch');
      expect(userList[1].name, 'Ervin Howell');
      expect(userList[2].name, 'Leanne Graham');
      expect(userList[3].name, 'Patricia Lebsack');
      expect(userList[4].name, '');
    });
  });
}
