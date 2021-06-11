import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/app/views/note_page.dart';
//import 'package:notes/app/views/trial.dart';
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
      // initialRoute: '/',
      // getPages: [
      //   GetPage(name: '/', page:()=> Home(),transition: Transition.leftToRightWithFade),
      //   GetPage(name: '/newNotePage', page:()=> NotePage(), transition: Transition.leftToRightWithFade),
      //   GetPage(name: '/existingNotePage', page:()=> NotePage(isExiting: true,),transition: Transition.leftToRightWithFade)
      // ],
    );
  }
}
