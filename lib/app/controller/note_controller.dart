import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:intl/intl.dart';
import '../model/note_model.dart';
import '../theme/theme.dart';

class NoteController extends GetxController {
  Box<Note> notes = Hive.box('notes');

  // TextEditingController titleController = TextEditingController();
  // TextEditingController bodyController = TextEditingController();

  void addNewNote(String? title, String body, Color? color) {
    final newNote = Note(
      title: title ?? "No title",
      body: body,
      date: DateFormat('dd MMM, yyyy').format(DateTime.now()).toString(),
      color: color ?? NTheme.noteColor,
    );

    notes.add(newNote);
  }

  void updateNote(String? title, String? body, int index, Color? color) {
    final currentNote = notes.getAt(index);
    final editNote = Note(
        title: title ?? currentNote!.title.toString(),
        body: body ?? currentNote!.body.toString(),
        color: color ?? currentNote!.color,
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
