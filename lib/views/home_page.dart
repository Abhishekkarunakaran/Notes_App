import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/theme/theme.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes",
        style: NTheme.titleFont),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 7,
            itemBuilder: (BuildContext context,int index) {
              return NoteCard();
            }
            ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: NTheme.buttonColor,
        child: FaIcon(
          Icons.add_rounded,
          color: NTheme.whiteColor,
          size: 40,
        ),
        onPressed: (){
          //TODO: AddButton
        },
      ),
    );
  }
}



// ignore: must_be_immutable
class NoteCard extends StatelessWidget {

  NoteCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
