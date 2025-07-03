import 'package:modu_3_dart_study/250703/model/comment.dart';

abstract interface class CommentDataSource {
  Future<List<Comment>> getComments();
}
