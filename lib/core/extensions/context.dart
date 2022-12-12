import 'package:flutter/material.dart';

extension XBuildContext on BuildContext {
  go(String name) {
    Navigator.pushNamed(this, name);
  }

  goNamed(String name) {
    Navigator.popAndPushNamed(this, name);
  }

  pop() {
    Navigator.pop(this);
  }
}
