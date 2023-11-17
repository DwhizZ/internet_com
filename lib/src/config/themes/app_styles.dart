import 'package:flutter/material.dart';

abstract class AppStyles {
  static const bodyStyle = TextStyle(fontSize: 14);
  static const subheaderStyle = TextStyle(
    fontSize: 18,
    color: Color.fromARGB(255, 61, 12, 196),
  );

  static const headerStyle = TextStyle(
    fontSize: 40,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 61, 12, 196),
  );
}
