import 'package:modu_3_dart_study/250613/asset.dart';

abstract class TangibleAsset extends Asset {
  String color;

  TangibleAsset(super.name, super.price, this.color);
}
