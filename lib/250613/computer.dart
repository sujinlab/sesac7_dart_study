import 'package:modu_3_dart_study/250613/tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(super.name, super.price, super.color, this.makerName);
}
