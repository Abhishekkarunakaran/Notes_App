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

  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    final double wt = MediaQuery.of(context).size.width;
    Box<Note> notes = Hive.box("notes");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Notes", style: NTheme.titleFont),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration( 
                  color: NTheme.buttonColor.withOpacity(.5),
                  shape: BoxShape.circle)),
              top: ht / 10,
              left: -wt / 3,
            ),
            Positioned(
              child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                   color: NTheme.buttonColor.withOpacity(.5), 
                   shape: BoxShape.circle)),
              top: ht * 0.5,
              right: -wt / 4,
            ),
            ValueListenableBuilder(
                valueListenable: notes.listenable(),
                builder: (BuildContext context, Box notes, _) {
                  if (notes.values.isEmpty)
                    return Center(
                      child: Text(
                        "No notes to display",
                        style: TextStyle(
                          color: Color(0xFF4A5160),
                          fontSize: 25,
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: NTheme.buttonColor,
        child: FaIcon(
          Icons.add_rounded,
          color: NTheme.whiteColor,
          size: 40,
        ),
        onPressed: () {
          // Get.toNamed('/newNotePage');
          Get.to(() => NotePage(), transition: Transition.rightToLeftWithFade);
        },
      ),
    );
  }
}
