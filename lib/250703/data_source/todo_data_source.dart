import 'package:modu_3_dart_study/250703/model/todo.dart';

abstract interface class TodoDataSource {
  Future<List<Todo>> getTodos();
}
