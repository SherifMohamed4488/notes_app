import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/views/notes_view.dart';
import 'package:notes_app_project_tenth/views/edit_%20note_view.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

import 'cubits/add _note_cubit/add_note_cubit.dart';

void main() async {
  runApp( NotesApp());

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

   Hive.registerAdapter(NoteModelAdapter());

}

class NotesApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [

        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        routes: {
          EditNoteView.id: (context) => EditNoteView(),

        },
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,

        home: NotesView(),
      ),
    );
  }
}