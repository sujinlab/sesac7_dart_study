import 'package:collection/collection.dart';
import 'package:modu_3_dart_study/250703/data_source/user_data_source.dart';
import 'package:modu_3_dart_study/250703/model/user.dart';
import 'package:modu_3_dart_study/250703/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepositry {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(this._userDataSource);

  @override
  Future<List<User>> getUsers() {
    return _userDataSource.getUsers();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    return (await _userDataSource.getUsers())
        .sortedBy(
          (e) => (e.name == null || e.name!.isEmpty) ? 'zzzzz' : e.name!,
        )
        .take(10)
        .toList();
  }
}
