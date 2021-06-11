import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/app/controller/note_controller.dart';
import 'package:notes/app/model/note_model.dart';
import 'package:notes/app/theme/theme.dart';
import 'package:notes/app/views/widgets/editable_notecard.dart';

// ignore: must_be_immutable
class NotePage extends StatelessWidget {
  int? index;
  bool? isExiting;
  
  NotePage({Key? key, this.isExiting: false, this.index,}) : super(key: key);

  // EditableNote editableNote = EditableNote();
  
NoteController noteController = Get.put(NoteController());
  @override
  Widget build(BuildContext context) {
    Color color = NTheme.noteColor;
    Note? note;
    if (isExiting!) note = noteController.getNote(index!);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: SizedBox()),
            isExiting!
                ? InkWell(
                    splashColor: NTheme.buttonColor,
                    onTap: () {
                      noteController.delNote(index!);
                      Get.back();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'DELETE',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: NTheme.noteColor),
                      ),
                    ),
                  )
                : SizedBox(
                    height: 20,
                  ),
            InkWell(
              splashColor: NTheme.buttonColor,
              onTap: () {
                isExiting!
                    ? noteController.updateNote(
                        index!,
                        color)
                    :noteController.addNewNote(
                        color);
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'SAVE',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: NTheme.noteColor),
                ),
              ),
            )
          ],
        ),
      ),
      body: isExiting!
          ? Stack(
              children: [
                SingleChildScrollView(
                    child: EditableNote(
                  index: index,
                )),
                Positioned(
                  bottom: 20,
                  right: 40,
                  child: Text(note!.date.toString(),
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: NTheme.mainColor)),
                )
              ],
            )
          : SingleChildScrollView(child: EditableNote()),
      //floatingActionButton: ,
    );
  }
}
