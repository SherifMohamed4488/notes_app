import 'package:flutter/material.dart';

import 'notes_item.dart';

class NotesListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(

            padding: EdgeInsets.only(top: 8, left: 0, right: 0, bottom: 0),

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: NotesItem(),
              );
            },
          ),
        ),
      );
  }}