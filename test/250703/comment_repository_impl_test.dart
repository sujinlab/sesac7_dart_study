import 'package:modu_3_dart_study/250703/data_source/comment_data_source.dart';
import 'package:modu_3_dart_study/250703/repository/comment_repository_impl.dart';
import 'package:test/test.dart';
import 'mock/mock_comment_data_source_Impl.dart';

void main() {
  group('CommentRepositoryImpl 테스트', () {
    test('getComments(1)', () async {
      final CommentDataSource dataSource = MockCommentDataSourceImpl();
      final commentRepo = CommentRepositoryImpl(dataSource);

      expect((await commentRepo.getComments(1)).length, 2);
    });

    test('getComments(2)', () async {
      final CommentDataSource dataSource = MockCommentDataSourceImpl();
      final commentRepo = CommentRepositoryImpl(dataSource);

      expect((await commentRepo.getComments(2)).length, 1);
    });

    test('getComments(3)', () async {
      final CommentDataSource dataSource = MockCommentDataSourceImpl();
      final commentRepo = CommentRepositoryImpl(dataSource);

      expect((await commentRepo.getComments(3)).length, 0);
    });
  });
}
