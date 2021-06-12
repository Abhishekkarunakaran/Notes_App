import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/app/model/note_model.dart';
import 'package:notes/app/theme/theme.dart';
import 'package:notes/app/views/note_page.dart';

// ignore: must_be_immutable
class NoteCard extends StatelessWidget {
  int index;
  final Note note;
  NoteCard({Key? key, required this.index, required this.note})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
            () => NotePage(
                  isExiting: true,
                  index: index,
                ),
            transition: Transition.rightToLeftWithFade);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX:.5,sigmaY: .5),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.white.withOpacity(0.3), width: 2),
                gradient: LinearGradient(colors: [
                  Colors.white.withOpacity(0.8),
                  Colors.white.withOpacity(0.4)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  note.title.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: NTheme.noteTitleFont,
                ),
                Spacer(
                  flex: 2,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black12,
                  endIndent: 60,
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  note.body.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: NTheme.noteBodyFont,
                ),
                Spacer(
                  flex: 4,
                ),
                Text(note.date.toString(),
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xFF383838))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
