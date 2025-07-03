import 'package:modu_3_dart_study/250703/data_source/todo_data_source.dart';
import 'package:modu_3_dart_study/250703/model/todo.dart';

class MockTodoDataSourceImpl implements TodoDataSource {
  final json = [
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false,
    },
    {
      "userId": 1,
      "id": 2,
      "title": "quis ut nam facilis et officia qui",
      "completed": false,
    },
    {
      "userId": 1,
      "id": 3,
      "title": "fugiat veniam minus",
      "completed": false,
    },
    {
      "userId": 1,
      "id": 4,
      "title": "et porro tempora",
      "completed": true,
    },
    {
      "userId": 1,
      "id": 5,
      "title":
          "laboriosam mollitia et enim quasi adipisci quia provident illum",
      "completed": false,
    },
  ];

  @override
  Future<List<Todo>> getTodos() async {
    return json.map((e) => Todo.fromJson(e)).toList();
  }
}
