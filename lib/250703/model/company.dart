import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable(explicitToJson: true)
class Company {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  // JSON → 객체 생성
  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  // 객체 → JSON 변환
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
