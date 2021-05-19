import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/theme/theme.dart';
import 'package:notes/widgets/editable_notecard.dart';


// ignore: must_be_immutable
class NotePage extends StatelessWidget {
  
  bool isExiting;
  NotePage({Key? key,this.isExiting:false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: SizedBox()
            ),
            isExiting ?
              InkWell(
                splashColor: NTheme.buttonColor,
                onTap: (){
                  //TODO: Funtionality to be added
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('DELETE',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: NTheme.noteColor
                    ),),
                ),
              ) :
            SizedBox(
              height: 20,
            ),
            InkWell(
              splashColor: NTheme.buttonColor,
              onTap: (){
                //TODO: Funtionality to be added
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('SAVE',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: NTheme.noteColor
                ),),
              ),
            )
          ],
        ),
      ),
      body: isExiting?
      Stack(
        children: [
          SingleChildScrollView(
              child: EditableNote()),
          Positioned(
            bottom: 20,
            right: 40,
            child: Text('12-12-12',
            style: GoogleFonts.poppins(
            fontSize: 15,
                fontWeight: FontWeight.w500,
                color: NTheme.mainColor
            )
            ),
          )
        ],
      )
      : SingleChildScrollView(child: EditableNote()),
    );
  }
}
