import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_project_tenth/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/views/edit_%20note_view.dart';


class NotesItem extends StatelessWidget {
  NotesItem({ required this.note});


final NoteModel note ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context){

          return EditNoteView(n: note,);

        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Container(
        padding: EdgeInsets.only(top: 8 , left: 16  , bottom: 22),


            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color)
            ),


            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [

        ListTile(

          title: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text(note.title , style: TextStyle(color: Colors.black , fontSize: 30) ,),
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top: 14 ),
            child: Text(note.subTitle , style: TextStyle( fontSize: 20, color: Colors.black.withValues(alpha: 0.5)),),
          ),

          trailing: IconButton(
              onPressed: (){
            note.delete();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();

          },
              icon: Icon(FontAwesomeIcons.trash , color: Colors.black , size: 30,)),

        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0 , right: 24),
          child: Text(note.date , style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),),
        )
              ],


            )),
      ),
    );
  }
}