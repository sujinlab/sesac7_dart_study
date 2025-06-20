import 'package:modu_3_dart_study/250620/word.dart';
import 'package:test/test.dart';
import 'dart:math';

void main() {
  test('isVowel, isConsonant 테스트', () {
    Word word = Word();
    word.word = generateRandomEnglishWord();

    for (int i = 0; i < word.word.length; i++) {
      String alphabet = word.word.substring(i, i + 1);
      print(alphabet);
      expect(word.isVowel(i), isVowel(alphabet));
      expect(word.isConsonant(i), isConsonant(alphabet));
    }
  });
}

bool isVowel(String alphabet) {
  final vowels = ['a', 'e', 'i', 'o', 'u'];
  return vowels.contains(alphabet);
}

bool isConsonant(String alphabet) {
  return !isVowel(alphabet);
}

/// 무작위 영어 단어를 생성하여 반환합니다.
String generateRandomEnglishWord() {
  // 1. 단어 목록을 정의합니다. 실제 애플리케이션에서는 더 긴 목록을 사용합니다.
  final List<String> words = [
    'apple',
    'banana',
    'orange',
    'grape',
    'strawberry',
    'hello',
    'world',
    'dart',
    'flutter',
    'programming',
    'random',
    'computer',
    'developer',
    'software',
  ];

  // 2. Random 객체를 생성합니다.
  final random = Random();

  // 3. 0부터 (단어 목록의 길이 - 1) 사이의 무작위 인덱스를 생성합니다.
  final index = random.nextInt(words.length);

  // 4. 해당 인덱스의 단어를 반환합니다.
  return words[index];
}
