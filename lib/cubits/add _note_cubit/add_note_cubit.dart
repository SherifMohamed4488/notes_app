
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

class AddNoteCubit extends Cubit<AddNoteState>{

  AddNoteCubit() : super(AddNoteInitial());


  Color  color =  Color(0xffFA003F);


    addNote(NoteModel note)async{

      note.color = color.toARGB32() ;


      emit(AddNoteLoading());
      try{
        var noteBox = Hive.box<NoteModel>(kNotesBox);

        await noteBox.add(note);

        emit(AddNoteSuccess());

      }catch(e){

       emit(AddNoteFailure(e.toString()));
      }


    }



}