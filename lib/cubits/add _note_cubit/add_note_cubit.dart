

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

class AddNoteCubit extends Cubit<AddNoteState>{

  AddNoteCubit() : super(AddNoteInitial());

   // List <NoteModel> notess = [];

    addNote(NoteModel note)async{


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