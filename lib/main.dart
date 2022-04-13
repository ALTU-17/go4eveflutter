import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:go4eveflutter/pages/navigation/home.dart';
import 'package:go4eveflutter/pages/login_page.dart';
import 'package:go4eveflutter/pages/navigation/profile.dart';
import 'package:go4eveflutter/pages/register.dart';
import 'package:go4eveflutter/splashscreen.dart';
import 'package:go4eveflutter/styles/theme.dart';
import 'package:go4eveflutter/utils/routes.dart';

import 'app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: 'SplashScreen',
      routes: {
        '/': (context) => SplashScreen(),
        'login': (context) => MyLogin(),
        'register': (context) => MyRegister(),
        'home': (context) => Home(),
        'profile': (context) => Profile()
        // MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
