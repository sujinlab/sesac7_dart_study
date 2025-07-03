import 'package:modu_3_dart_study/250703/data_source/photo_data_source.dart';
import 'package:modu_3_dart_study/250703/model/photo.dart';

class MockPhotoDataSourceImpl implements PhotoDataSource {
  List<Map<String, dynamic>> json = [
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "https://via.placeholder.com/600/92c952",
      "thumbnailUrl": "https://via.placeholder.com/150/92c952",
    },
    {
      "albumId": 1,
      "id": 2,
      "title": "reprehenderit est deserunt velit ipsam",
      "url": "https://via.placeholder.com/600/771796",
      "thumbnailUrl": "https://via.placeholder.com/150/771796",
    },
    {
      "albumId": 1,
      "id": 3,
      "title": "officia porro iure quia iusto qui ipsa ut modi",
      "url": "https://via.placeholder.com/600/24f355",
      "thumbnailUrl": "https://via.placeholder.com/150/24f355",
    },
  ];

  @override
  Future<List<Photo>> getPhotos() async {
    return json.map((e) => Photo.fromJson(e)).toList();
  }
}
