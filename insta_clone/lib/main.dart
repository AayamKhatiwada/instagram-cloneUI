import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobileScreenLayout.dart';
import 'package:insta_clone/responsive/responsive.dart';
import 'package:insta_clone/responsive/webScreenLayout.dart';
import 'package:insta_clone/utiles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // removing the top right banner
      debugShowCheckedModeBanner: false,

      // title of the app
      title: 'Instagram',

      // dark mode
      theme: ThemeData.dark().copyWith(
        // setting the background color into extra dark where mobileBackgroundColor is imported from colors.dart
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
