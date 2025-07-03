import 'package:modu_3_dart_study/250703/data_source/todo_data_source.dart';
import 'package:modu_3_dart_study/250703/repository/todo_repository_impl.dart';
import 'package:test/test.dart';

import 'mock/mock_todo_data_source_impl.dart';

void main() {
  group('TodoRepositoryImpl 테스트', () {
    test('getTodos()', () async {
      final TodoDataSource dataSource = MockTodoDataSourceImpl();
      final todoRepo = TodoRepositoryImpl(dataSource);

      expect((await todoRepo.getTodos()).length, 5);
    });

    test('getCompletedTodos()', () async {
      final TodoDataSource dataSource = MockTodoDataSourceImpl();
      final todoRepo = TodoRepositoryImpl(dataSource);

      expect((await todoRepo.getCompletedTodos()).length, 1);
    });
  });
}
