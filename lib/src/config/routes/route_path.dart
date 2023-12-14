import 'package:flutter/material.dart';
import 'package:form_validation_test/src/pages/bonus_page/provider/bonus_page_provider.dart';
import 'package:form_validation_test/src/pages/bonus_page/views/bonus_page.dart';
import 'package:form_validation_test/src/pages/login_page/views/main_page.dart';
import 'package:form_validation_test/src/pages/create_account_page/views/second_page.dart';
import 'package:provider/provider.dart';
import '../../pages/login_page/provider/main_page_provider.dart';
import '../../pages/create_account_page/provider/second_page_provider.dart';
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
    RouteName.bonusPage: (context) => Provider(
          create: (context) => BonusPageProvider(context),
          child: const BonusPage(),
        ),
  };
}
