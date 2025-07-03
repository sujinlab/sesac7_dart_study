// {
// "userId": 1,
// "id": 1,
// "title": "quidem molestiae enim"
// },

import 'package:json_annotation/json_annotation.dart';

part 'album.g.dart';

@JsonSerializable()
class Album {
  final int? userId;
  final int? id;
  final String? title;

  Album({required this.userId, required this.id, required this.title});

  // JSON → 객체 생성
  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  // 객체 → JSON 변환
  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
