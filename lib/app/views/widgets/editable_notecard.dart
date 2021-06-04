import 'package:flutter/material.dart';
import 'package:notes/app/controller/note_controller.dart';
import 'package:notes/app/theme/theme.dart';

// ignore: must_be_immutable
class EditableNote extends StatelessWidget {
  //String? noteTitle;
  int? index;
  EditableNote({Key? key, this.index}) : super(key: key);

  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(color: NTheme.noteColor, boxShadow: [
        BoxShadow(
            color: Color(0xFF282828),
            offset: Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 2)
      ]),
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: 10,
          // ),
          TextField(
            controller: titleController,
            cursorColor: NTheme.mainColor,
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
            cursorColor: NTheme.mainColor,
            style: NTheme.noteBodyFont,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
                hintText: 'Type something ...',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
        ],
      ),
    );
  }
}
