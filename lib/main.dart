import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/theme/theme.dart';
import 'package:notes/views/home_page.dart';
import 'package:notes/views/note_page.dart';

void main() {
  runApp(MyApp());
}

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
      initialRoute:'/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/newPage', page: () => NotePage()),
        GetPage(name: '/editPage', page: () => NotePage(isExiting: true))
      ],
    );
  }
}
