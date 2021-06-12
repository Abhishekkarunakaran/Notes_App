import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/app/controller/note_controller.dart';
import 'package:notes/app/model/note_model.dart';
import 'package:notes/app/theme/theme.dart';
import 'package:notes/app/widgets/editable_notecard.dart';

// ignore: must_be_immutable
class NotePage extends StatelessWidget {
  int? index;
  bool? isExiting;

  NotePage({
    Key? key,
    this.isExiting: false,
    this.index,
  }) : super(key: key);

  // EditableNote editableNote = EditableNote();
  Note? note;
  NoteController noteController = Get.put(NoteController());
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    final double wt = MediaQuery.of(context).size.width;

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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        'DELETE',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6595FF)),
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
                    ? noteController.updateNote(index!)
                    : noteController.addNewNote();
                Get.back();
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'SAVE',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6595FF)),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          //clipBehavior: Clip.antiAlias,
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
            isExiting!
                ? SingleChildScrollView(
                    child: EditableNote(
                    index: index,
                  ))
                : SingleChildScrollView(child: EditableNote()),
          ],
        ),
      ),
    );
  }
}
