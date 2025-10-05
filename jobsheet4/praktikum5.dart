(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var rec = (5, 10);
  print("Sebelum: $rec");
  var rec2 = tukar(rec);
  print("Sesudah: $rec2");
  
  (String, int) mahasiswa = ("Fawwaz Alifio Farsa", 2341720128);
  print(mahasiswa);

  var mahasiswa2 = ('Fawwaz Alifio', a: 2341720128, b: true, 'Farsa');

  print(mahasiswa2.$1); 
  print(mahasiswa2.a);  
  print(mahasiswa2.b);  
  print(mahasiswa2.$2); 
}
