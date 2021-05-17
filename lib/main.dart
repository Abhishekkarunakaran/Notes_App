import 'package:flutter/material.dart';
import 'package:notes/theme/theme.dart';
import 'package:notes/views/home_page.dart';
import 'package:notes/views/new_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: NTheme.mainColor,
        appBarTheme: AppBarTheme(
          color: NTheme.mainColor,
        ),
      ),
      home: NewNotePage()
    );
  }
}
