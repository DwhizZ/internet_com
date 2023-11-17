import 'package:flutter/material.dart';
import 'package:form_validation_test/src/config/routes/route_name.dart';
import 'package:form_validation_test/src/config/routes/route_path.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.mainPage,
      routes: RoutePath.routes,
    );
  }
}
