import 'package:modu_3_dart_study/250703/data_source/photo_data_source.dart';
import 'package:modu_3_dart_study/250703/repository/photo_repository_impl.dart';
import 'package:test/test.dart';

import 'mock/mock_photo_data_source_impl.dart';

void main() {
  group('PhotoRepositoryImpl 테스트', () {
    test('getPhoto(1)', () async {
      final PhotoDataSource dataSource = MockPhotoDataSourceImpl();
      final photoRepo = PhotoRepositoryImpl(dataSource);

      expect((await photoRepo.getPhotos(1)).length, 3);
    });

    test('getPhotos(2)', () async {
      final PhotoDataSource dataSource = MockPhotoDataSourceImpl();
      final photoRepo = PhotoRepositoryImpl(dataSource);

      expect((await photoRepo.getPhotos(2)).length, 0);
    });

    test('getPhotos(3)', () async {
      final PhotoDataSource dataSource = MockPhotoDataSourceImpl();
      final photoRepo = PhotoRepositoryImpl(dataSource);

      expect((await photoRepo.getPhotos(3)).length, 0);
    });
  });
}
