import 'package:flutter/material.dart';

import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/notes_view_body.dart';



class NotesView extends StatelessWidget {
  const NotesView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: (){

        showModalBottomSheet(

          isScrollControlled: true,
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(16)
          ),

            context: context, builder: (context){

          return AddNoteBottomSheet();
        });

      } , child: Icon(Icons.add , color: Colors.black,),
        
        backgroundColor: Color(0xff4EF0DB) ,),

     body : NotesViewBody()

    );

  }
}



