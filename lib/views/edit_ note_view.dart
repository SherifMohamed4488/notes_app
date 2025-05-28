
import 'package:flutter/material.dart';
import 'package:notes_app_project_tenth/widgets/custom_appbar.dart';
import 'package:notes_app_project_tenth/widgets/custom_text_feild.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static String id = "edit note view";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 8),
        child: Column(
          children: [

          SizedBox(height: 50,),


        CustomAppBar(iconData: Icons.check, title: "Edit Note"),
         SizedBox(height: 50,),
         CustomTextFeild(hint: "Title"),
         SizedBox(height: 20,),


        CustomTextFeild(hint: "Content" , maxLines : 5)
        ]

        ),
      )
    );
  }
}