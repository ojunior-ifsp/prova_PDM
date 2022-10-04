import 'dart:collection';

import 'package:pdm/model/list.dart';

class ListCache {
  var _index = -1;

  final List<ListItems> _todos = [
    ListItems("Yoga Experimental", "Aula de Yoga Experimental", "https://i.imgur.com/v3rpKR0.png"),
    ListItems("Yoga Basico", "Aula de Yoga Básica", "https://i.imgur.com/v3rpKR0.png"),
    ListItems("Yoga Intermadiário", "Aula de Yoga Intermediária", "https://i.imgur.com/v3rpKR0.png"),
    ListItems("Yoga Avançado", "Aula de Yoga Avançada", "https://i.imgur.com/v3rpKR0.png"),
  ];

  void addItem(String name, String descr, String linkImg) {
    _todos.add(ListItems(name, descr, linkImg));
  }

  int get index => _index;

  set index(int value) {
    if ((value >= 0) && (value < _todos.length)) {
      _index = value;
    } else {
      _index = -1;
    }
  }

  UnmodifiableListView<ListItems> get list => UnmodifiableListView<ListItems>(_todos);
}
