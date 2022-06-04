import 'package:cy_intern/common/theme_colors.dart';
import 'package:cy_intern/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w800, color: ThemeColors.primaryYellow),
          headline2: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w800, color: ThemeColors.primaryYellow), 
          headline3: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800, color: ThemeColors.primaryYellow), 
          headline4: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500, color: ThemeColors.primaryRed),
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: ThemeColors.primaryRed),
          bodyText2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: ThemeColors.primaryRed),
   
        ),
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
