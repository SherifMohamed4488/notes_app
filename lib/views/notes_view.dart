import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';



class NotesView extends StatelessWidget {
  const NotesView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body : NotesViewBody()

    );

  }
}

