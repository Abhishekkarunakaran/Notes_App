import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:notes/app/controller/note_controller.dart';
import 'package:notes/app/model/note_model.dart';
import 'package:notes/app/theme/theme.dart';
import 'package:notes/app/views/note_page.dart';
//import 'package:notes/app/views/note_page.dart';
import 'package:notes/app/widgets/note_card.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  //NoteController noteController = NoteController();

  // Box<dynamic> notes = Hive.box("notes");

  @override
  Widget build(BuildContext context) {
    Box<Note> notes = Hive.box("notes");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Notes", style: NTheme.titleFont),
      ),
      body: ValueListenableBuilder(
          valueListenable: notes.listenable(),
          builder: (BuildContext context, Box notes, _) {
            if (notes.values.isEmpty)
              return Center(
                child: Text(
                  "No notes to display",
                  style: TextStyle(
                    color: NTheme.buttonColor,
                    fontSize: 30,
                  ),
                ),
              );
            else
              return ListView.builder(
                itemCount: notes.length,
                itemBuilder: (BuildContext context, int index) {
                  final note = notes.getAt(index);
                  return NoteCard(
                    index: index,
                    note: note,
                  );
                },
              );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: NTheme.buttonColor,
        child: FaIcon(
          Icons.add_rounded,
          color: NTheme.whiteColor,
          size: 40,
        ),
        onPressed: () {
          // Get.toNamed('/newNotePage');
          Get.to(() => NotePage(),transition: Transition.rightToLeftWithFade);
        },
      ),
    );
  }
}
