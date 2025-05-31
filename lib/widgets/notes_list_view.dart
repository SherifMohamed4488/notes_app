import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/cubits/notes_cubit/notes_cubit.dart';

import '../cubits/notes_cubit/notes_state.dart';
import '../models/note_model.dart';
import 'notes_item.dart';

class NotesListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<NotesCubit, NoteState>(

        builder: (context , state) {


          List<NoteModel> note = BlocProvider.of<NotesCubit>(context).notes ?? [];
          return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),

          child: ListView.builder(

            itemCount:  note.length,
          padding: EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),

          itemBuilder: (context, index) {
          return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: NotesItem(note: note[index],),
          );
          },
          )
          ,
          );

        }
      );
  }}