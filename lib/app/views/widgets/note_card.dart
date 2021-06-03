import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/app/theme/theme.dart';
import 'package:notes/app/views/note_page.dart';


class NoteCard extends StatelessWidget {
  
  NoteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //TODO: Yet to be added
        Get.to(NotePage(isExiting: true,),transition: Transition.rightToLeftWithFade);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: NTheme.noteColor,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF282828),
              offset: Offset(5,5),
              blurRadius: 10,
              spreadRadius: 2
            )
          ]
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 1,
            ),
            Text('Title',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: false,
            style: NTheme.noteTitleFont,
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
              endIndent: 60,
            ),
            Text(''
                'This is filled with content, and it should show some content,'
                'hkghkdfkgajkjdlgajlskdgka;ksd;ga;sdg',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            style: NTheme.noteBodyFont,
            ),
            Spacer(
              flex: 3,
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
      ),
    );
  }
}
