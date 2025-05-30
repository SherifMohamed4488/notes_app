import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

import 'notes_state.dart';

class NotesCubit extends Cubit<NoteState>{

  NotesCubit() : super(NoteInitial());

  fetchAllNotes()async{


    emit(NoteLoading());
    try{
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notes =  noteBox.values.toList();

      emit(NoteSuccess(notes));

    }catch(e){

      emit(NoteFailure(e.toString()));
    }


  }



}