class Word {
  String word = '';
  
  bool isVowel(int i) {
    String vowel =  word.substring(i, i + 1);
    return vowel == 'a' || vowel == 'e' || vowel == 'i' || vowel == 'o' || vowel == 'u';
  }
}

void main() {
  Word word = Word();
  word.isVowel() //..? 인자가 인트 밖에 없음.. 스트링 어떻게..?하더라..
}