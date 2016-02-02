// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library lazy.test;

import 'package:lazy/lazy.dart';
import 'package:test/test.dart';

void main() {
  group('Lazy<T> tests', () {
    int count;

    setUp(() {
      count = 0;
    });

    test('No evaluation is performed unless the value is retrieved', () {
      final lv = new Lazy(() {
        count++;
        return 'foo';
      });
      expect(count, equals(0));
      expect(lv(), equals('foo'));
    });

    test('Evaluation is performed only once', () {
      final lv = new Lazy(() {
        count++;
        return 'foo';
      });

      expect(lv(), equals('foo'));
      expect(count, equals(1));

      expect(lv(), equals('foo'));
      expect(count, equals(1));
    });
  });
}
