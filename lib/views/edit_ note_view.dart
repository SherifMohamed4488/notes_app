
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project_tenth/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/widgets/custom_appbar.dart';
import 'package:notes_app_project_tenth/widgets/custom_text_feild.dart';
import '../widgets/edit_note_view_colors.dart';

class EditNoteView extends StatefulWidget {
  EditNoteView({required this.n});

  static String id = "edit note view";
  final NoteModel  n ;



  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {



   String ? title , content ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 8),
        child: Column(
          children: [

          const SizedBox(height: 50,),


        CustomAppBar(iconData: Icons.check,

            onpressed:(){

              widget.n.title = title ?? widget.n.title;
              widget.n.subTitle = content ?? widget.n.subTitle;
              widget.n.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);

            }  ,

            title: "Edit Note"
        ),

        const  SizedBox(height: 50,),
            CustomTextFeild(hint: widget.n.title , onChanged:(value){ title = value;},),
        const SizedBox(height: 20,),


        CustomTextFeild(hint: widget.n.subTitle , maxLines : 5 , onChanged: (value){ content = value;},),

            SizedBox(height: 15,),

            EditNoteColorsList(note: widget.n),
        ]

        ),
      )
    );
  }
}

