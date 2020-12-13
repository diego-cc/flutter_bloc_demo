import 'package:flutter/foundation.dart';

class Contact {
  final String name;
  final String mobile;

  Contact({@required this.name, this.mobile});

  @override
  String toString() {
    return "Contact: ${this.name}\nMobile: ${this.mobile}";
  }
}