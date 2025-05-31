import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/simple_bloc_observer.dart';
import 'package:notes_app_project_tenth/views/notes_view.dart';
import 'package:notes_app_project_tenth/views/edit_%20note_view.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

import 'cubits/add _note_cubit/add_note_cubit.dart';

void main() async {
 await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);

  // await Hive.box<NoteModel>(kNotesBox).add(NoteModel(title: "ad ", color: Colors.white.value, subTitle: "tsts", date: DateTime.now().toString()));

  print("elements of box : ${Hive.box<NoteModel>(kNotesBox).length}");
  Bloc.observer = SimpleBlocObserver();
  runApp( NotesApp());



}

class NotesApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EditNoteView.id: (context) => EditNoteView(),

      },
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,

      home: NotesView(),
    );
  }
}