import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_cubit.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/cubits/notes_cubit/notes_cubit.dart';

import 'add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit , AddNoteState> (
          listener: (context , state){

            if(state is AddNoteFailure){

              print("failid ${state.errMessage}");
            }

            if(state is AddNoteSuccess){
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();

                Navigator.pop(context);

            }


          },
          builder:(context , state) {


            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(right: 16 , left: 16 ,top: 16
                      , bottom: MediaQuery.of(context).viewInsets.bottom
                  ),
                  child: const SingleChildScrollView(child: const AddNoteForm()),
                ),
              ),
            );


          },




      ),
    );
  }
}

