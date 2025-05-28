import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app_project_tenth/widgets/notes_list_view.dart';

import 'custom_appbar.dart';
import 'notes_item.dart';


class NotesViewBody extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8 ),
      child: Column(
        children: [

          SizedBox(height: 50,),

          CustomAppBar( title: "Notes", iconData: Icons.search,),

          NotesListView(),

    ],
    ));

  }
}




