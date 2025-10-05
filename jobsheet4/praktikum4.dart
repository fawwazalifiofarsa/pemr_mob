void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  var list1 = [1, 2, null];
  var list3 = [0, ...?list1];

  print(list1);
  print(list3.length);
  print(list1);
  print(list2);
  print(list2.length);

  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  String login = "";
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
