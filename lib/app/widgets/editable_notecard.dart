import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/app/controller/note_controller.dart';
import 'package:get/get.dart';
import 'package:notes/app/model/note_model.dart';
import 'package:notes/app/theme/theme.dart';
//import 'package:get/get.dart';

// ignore: must_be_immutable
class EditableNote extends StatelessWidget {
  int? index;
  // String? date;
  EditableNote({Key? key, this.index}) : super(key: key);

  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  NoteController noteController = Get.find<NoteController>();
  String? date;
  @override
  Widget build(BuildContext context) {
    if (index != null) {
      Note? note = noteController.getNote(index!);
      titleController.text = note!.title!;
      bodyController.text = note.body;
      date = note.date!;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.5,sigmaY: 0.5),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: double.infinity,
          decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
               Colors.white.withOpacity(0.8),
              Colors.white.withOpacity(0.4)
            ],
            begin: Alignment.topLeft,
            end:Alignment.bottomRight
          ),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 2
          ),
          borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onChanged: (value) {
                  noteController.title = value;
                },
                controller: titleController,
                cursorColor: NTheme.buttonColor,
                decoration: InputDecoration(
                    hintText: 'Title',
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
                style: NTheme.noteTitleFont,
              ),
              Divider(
                thickness: 1,
                color: Colors.black12,
                endIndent: 60,
              ),
              TextField(
                onChanged: (value) {
                  noteController.body = value;
                },
                controller: bodyController,
                cursorColor: NTheme.buttonColor,
                style: NTheme.noteBodyFont,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    hintText: 'Type something ...',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              (index != null)
                  ? Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(date!,
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: NTheme.mainColor)),
                  )
                  : SizedBox(
                      height: 12,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
