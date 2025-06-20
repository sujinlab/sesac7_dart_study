class Word {
  String word = '';

  static const vowels = ['a', 'e', 'i', 'o', 'u'];

  bool isVowel(int i) {
    String alphabet = word.substring(i, i + 1);

    return vowels.contains(alphabet);
  }

  bool isConsonant(int i) {
    return !isVowel(i);
  }
}
