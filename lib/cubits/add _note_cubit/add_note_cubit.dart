

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

class AddNoteCubit extends Cubit<AddNoteState>{

  AddNoteCubit() : super(AddNoteInitial());

    addNote(NoteModel note){
      emit(AddNoteLoading());
      try{
        var noteBox = Hive.box<NoteModel>(kNotesBox);

        emit(AddNoteSuccess());
        noteBox.add(note);

      }catch(e){

        AddNoteFailure(e.toString());
      }


    }



}