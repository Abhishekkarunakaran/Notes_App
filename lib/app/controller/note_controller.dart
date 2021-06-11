import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import '../model/note_model.dart';
//import '../theme/theme.dart';

class NoteController extends GetxController {
  bool selectedColorFAB = false;

  void selectColorFAB() {
    selectedColorFAB = !selectedColorFAB;
    update();
  }

  Box<Note> notes = Hive.box('notes');

  String? title;
  String? body;

  void getTitle(String text) => title = text;

  void getBody(String text) => body = text;

  void addNewNote(Color color) {
    int? colorValue = color.value;

    final newNote = Note(
      title: title ?? "No title",
      body: body?? "Description goes here",
      date: DateFormat('dd MMM, yyyy').format(DateTime.now()).toString(),
      color: colorValue,
    );

    notes.add(newNote);
  }

  // void addNewNote(Color color) {
  //   int? colorValue = color.value;
  //   String title = titleController.text;
  //   String body = bodyController.text;

  //   // ignore: unnecessary_null_comparison
  //   if (null == title) title = "Title";
  //   // ignore: unnecessary_null_comparison
  //   if (null == body) body = "Body...";

  //   final newNote = Note(
  //     title: title,
  //     body: body,
  //     date: DateFormat('dd MMM, yyyy').format(DateTime.now()).toString(),
  //     color: colorValue,
  //   );

  //   notes.add(newNote);
  // }

  void updateNote(int index, Color color) {
    int? colorValue = color.value;
    final currentNote = notes.getAt(index);

    final editNote = Note(
        title: title ?? currentNote!.title.toString(),
        body: body ?? currentNote!.body.toString(),
        color: colorValue,
        date: currentNote!.date.toString());

    notes.putAt(index, editNote);
  }

  void delNote(int index) {
    notes.deleteAt(index);
  }

  Note? getNote(int index) {
    var note = notes.getAt(index);
    return note;
  }
}
