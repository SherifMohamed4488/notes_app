import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_project_tenth/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/widgets/notes_list_view.dart';

import 'custom_appbar.dart';
import 'notes_item.dart';


class NotesViewBody extends StatefulWidget {
  

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  void initState(){

    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8 ),
      child: Column(
        children: [

          SizedBox(height: 50,),

          CustomAppBar( title: "Notes", iconData: Icons.search,),

          Expanded(child: NotesListView()),

    ],
    ));

  }
}




