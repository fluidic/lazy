library lazy.example;

import 'package:lazy/lazy.dart';

class LazyValue {
  Lazy<int> _v = new Lazy<int>(() {
    print('lazy');
    return 10;
  });

  int get v => _v();
}

main() {
  final lazy = new LazyValue();
  print(lazy.v);
  // Print lazy, then 10
  print(lazy.v);
  // Print only 10.
}
