void main() {
  String nama = "Fawwaz Alifio Farsa";
  String nim = "2341720128";

  for (int i = 0; i <= 201; i++) {
    if (i < 2) continue;

    bool prima = true;
    for (int y = 2; y <= i ~/ 2; y++) {
      if (i % y == 0) {
        prima = false;
        break;
      }
    }

    if (prima) {
      print("$i.) $nama, $nim");
    }
  }
}
