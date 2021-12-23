import 'package:e_wallet/components/constants.dart';
import 'package:e_wallet/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryTextTheme: TextTheme(bodyText1: TextStyle(color: black)),
  );

  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: dark,
    primaryTextTheme: TextTheme(caption: TextStyle(color: grey)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
