import 'package:flutter/material.dart';
import 'package:form_validation_test/src/pages/page1/main_page.dart';
import 'package:form_validation_test/src/pages/page2/second_page.dart';
import 'package:provider/provider.dart';
import '../../pages/page1/components/main_page_provider.dart';
import '../../pages/page2/components/second_page_provider.dart';
import 'route_name.dart';

class RoutePath {
  static final routes = <String, WidgetBuilder>{
    RouteName.mainPage: (context) => Provider(
          create: (context) => MainPageProvider(context),
          child: const MainPage(),
        ),
    RouteName.secondPage: (context) => Provider(
          create: (context) => SecondPageProvider(context),
          child: const SecondPage(),
        ),
  };
}
