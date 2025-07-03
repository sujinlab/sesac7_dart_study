import 'package:modu_3_dart_study/250703/model/photo.dart';

abstract interface class PhotoDataSource {
  Future<List<Photo>> getPhotos();
}
