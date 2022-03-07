import 'package:flutter/material.dart';
import 'package:food_cafe_app/pages/bottom_nav.dart';
import 'package:food_cafe_app/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      initialRoute: BottomNavigation.routedName,
      routes: {
        BottomNavigation.routedName: (context) => const BottomNavigation(),
        SettingsPage.routedName: (context) => const SettingsPage(),
      },
    );
  }
}
