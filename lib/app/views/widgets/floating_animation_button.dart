// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:notes/app/controller/note_controller.dart';
// import 'package:notes/app/theme/theme.dart';

// // ignore: must_be_immutable
// class AnimationColorButton extends StatelessWidget {
//   AnimationColorButton({Key? key}) : super(key: key);

//   NoteController noteController = NoteController();
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder(builder: (_) {
//       return GestureDetector(
//           onTap: () {
//             noteController.selectColorFAB();
//           },
//           child: AnimatedContainer(
//             duration: Duration(milliseconds: 500),
//             curve: Curves.easeIn,
//             child: noteController.selectedColorFAB
//                 ? Container(
//                     child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                           height: 10,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF7AB058),
//                             shape: BoxShape.circle,
//                           )),
//                       Container(
//                           height: 10,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFCF79AE),
//                             shape: BoxShape.circle,
//                           )),
//                       Container(
//                           height: 10,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF8981B8),
//                             shape: BoxShape.circle,
//                           )),
//                       Container(
//                           height: 10,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF6F97D3),
//                             shape: BoxShape.circle,
//                           )),
//                       Container(
//                           height: 10,
//                           decoration: BoxDecoration(
//                             color: NTheme.noteColor,
//                             shape: BoxShape.circle,
//                           )),
//                       GestureDetector(
//                         onTap: () {
//                           noteController.selectColorFAB();
//                         },
//                         child: Container(
//                           height: 10,
//                           child: Icon(Icons.close),
//                         ),
//                       )
//                     ],
//                   ))
//                 : Container(
//                     decoration: BoxDecoration(
//                       color: NTheme.buttonColor,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.color_lens_sharp,
//                       color: NTheme.whiteColor,
//                     )),
//           ));
//     });
//   }
// }
