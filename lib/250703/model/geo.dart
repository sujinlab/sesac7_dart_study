import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable(explicitToJson: true)
class Geo {
  final String? lat;
  final String? lng;

  Geo({
    this.lat,
    this.lng,
  });

  // JSON → 객체 생성
  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  // 객체 → JSON 변환
  Map<String, dynamic> toJson() => _$GeoToJson(this);
}
