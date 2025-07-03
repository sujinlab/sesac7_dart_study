import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  // {
  // "albumId": 1,
  // "id": 1,
  // "title": "accusamus beatae ad facilis cum similique qui sunt",
  // "url": "https://via.placeholder.com/600/92c952",
  // "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  // },

  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

  Photo({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  // JSON → Photo 객체 생성
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  // Photo 객체 → JSON 변환
  Map<String, dynamic> toJson() => _$PhotoToJson(this);

  @override
  String toString() {
    return '$albumId, $id, $title, $url, $thumbnailUrl';
  }
}
