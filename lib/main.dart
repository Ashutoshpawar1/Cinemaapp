import 'package:flutter/material.dart';
import 'utilities/app_font.dart';
import 'utilities/routes.dart';
import 'view/authentication/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CinemaApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFont.fontFamily,
        // ignore: deprecated_member_use
        // accentColor: const Color(0xffFFAD26),
      ),
      routes: routes,
      home: Splash(),
    );
  }
}
