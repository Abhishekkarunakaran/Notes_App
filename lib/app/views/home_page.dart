import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notes/app/theme/theme.dart';
import 'package:notes/app/views/note_page.dart';
import 'package:notes/app/views/widgets/note_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
          Get.to(NotePage(),transition: Transition.rightToLeftWithFade);
        },
      ),
    );
  }
}

