import 'package:modu_3_dart_study/250620/strong_box.dart';

void main() {
  final strongBox = StrongBox();

  strongBox.put(input: '금고');

  print(strongBox.get());
}
