import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/theme/theme.dart';
import 'package:notes/widgets/editable_notecard.dart';


class NewNotePage extends StatelessWidget {
  const NewNotePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                //TODO: add functionality
              },
              child: FaIcon(
                Icons.arrow_back,
                size: 30,
              )
            ),
            GestureDetector(
              onTap: (){
                //TODO: Funtionality to be added
              },
              child: Text('SAVE',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: NTheme.noteColor
              ),),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(child: EditableNote()),
    );
  }
}
