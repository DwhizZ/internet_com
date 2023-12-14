import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_validation_test/firebase_options.dart';
import 'package:form_validation_test/src/config/routes/route_name.dart';
import 'package:form_validation_test/src/config/routes/route_path.dart';
import 'package:bot_toast/bot_toast.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BotToast Demo',
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.mainPage,
      routes: RoutePath.routes,
    );
  }
}
