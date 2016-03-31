# lazy

[![Build Status](https://travis-ci.org/fluidic/lazy.svg?branch=master)](https://travis-ci.org/fluidic/lazy)

A library adding lazy evaluation to Dart. This package is based on Günter Zöchbauer's answer on the StackOverflow question [How to do lazy evaluation in Dart?][question].

[question]: http://stackoverflow.com/questions/33218987/how-to-do-lazy-evaluation-in-dart

## Usage

A simple usage example:

```dart
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
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/fluidic/lazy/issues
