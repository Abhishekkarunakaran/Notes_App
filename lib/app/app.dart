import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/home_page.dart';
import 'theme/theme.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: NTheme.buttonColor,
        canvasColor: NTheme.mainColor,
        focusColor: NTheme.mainColor,
        appBarTheme: AppBarTheme(
          color: NTheme.mainColor,
        ),
      ),
      title: 'Notes',
      home: Home(),
    );
  }
}
