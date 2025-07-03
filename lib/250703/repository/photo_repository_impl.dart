import 'package:modu_3_dart_study/250703/data_source/photo_data_source.dart';
import 'package:modu_3_dart_study/250703/model/photo.dart';
import 'package:modu_3_dart_study/250703/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _photoDataSource;

  PhotoRepositoryImpl(this._photoDataSource);

  @override
  Future<List<Photo>> getPhotos(int photoId) async {
    return (await _photoDataSource.getPhotos())
        .where((e) => e.albumId == photoId)
        .toList();
  }
}
