import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  // {
  // "postId": 1,
  // "id": 1,
  // "name": "id labore ex et quam laborum",
  // "email": "Eliseo@gardner.biz",
  // "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
  // },

  final int? postId;
  final int? id;
  final String? name;
  final String? email;
  final String? body;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);

  @override
  String toString() {
    return '$postId, $id, $name, $email, $body';
  }
}
