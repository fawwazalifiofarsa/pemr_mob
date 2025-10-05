void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);

  names1.add("Fawwaz Alifio Farsa");
  names1.add("2341720128");

  names2.addAll({"Fawwaz Alifio Farsa", "2341720128"});

  print(names1);
  print(names2);
}
