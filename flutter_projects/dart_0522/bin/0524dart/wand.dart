class Wand {
  String name; // 이름
  double power; // 마력

  Wand({required this.name, required this.power}) {
    if (name == null || name.length < 3) {
      throw Exception('에러 메시지: 이름은 null이거나 3문자 이상이어야 합니다.');
    }

    if (power < 0.5 || power > 100.0) {
      throw Exception('에러 메시지: 마력은 0.5 이상 100.0 이하여야 합니다.');
    }
  }
}