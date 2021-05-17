import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/theme/theme.dart';

class EditableNote extends StatelessWidget {

  EditableNote({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: NTheme.noteColor,
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF282828),
                  offset: Offset(5, 5),
                  blurRadius: 10,
                  spreadRadius: 2
              )
            ]
        ),
        padding: EdgeInsets.all(15),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              //maxLines: 50,
              cursorColor: NTheme.mainColor,
              decoration: InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
              style: NTheme.noteTitleFont
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
              endIndent: 60,
            ),
            Text(
                'blank',
              style: NTheme.noteBodyFont,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                '20/10/21',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xFF383838)
                )
            ),
          ],
        ),
    );
  }
}