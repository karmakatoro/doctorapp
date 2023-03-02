import 'package:doctorapp/screens/auth_page.dart';
import 'package:doctorapp/utils/config.dart';
import 'package:doctorapp/utils/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // this for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // predefine input decoration
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Config.primaryColor,
            border: Config.outlineBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outlineBorder,
            floatingLabelStyle: TextStyle(color: Config.primaryColor),
            prefixIconColor: Colors.black38,
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          )),
      initialRoute: '/',
      routes: {
        // this is initial route
        // which is auth page (login and signup)
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
      },
    );
  }
}
