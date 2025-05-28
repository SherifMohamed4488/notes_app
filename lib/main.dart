import 'package:flutter/material.dart';
import 'package:notes_app_project_tenth/views/notes_view.dart';
import 'package:notes_app_project_tenth/views/edit_%20note_view.dart';

void main() {
  runApp(const NotesApp());
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