import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/views/notes_view.dart';
import 'package:notes_app_project_tenth/views/edit_%20note_view.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

void main() async {
  runApp(const NotesApp());

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

   Hive.registerAdapter(NoteModelAdapter());

}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EditNoteView.id : (context) => EditNoteView(),

      },
      theme: ThemeData( brightness: Brightness.dark , fontFamily:"Poppins"),
      debugShowCheckedModeBanner: false,

      home:NotesView() ,
    );
  }
}