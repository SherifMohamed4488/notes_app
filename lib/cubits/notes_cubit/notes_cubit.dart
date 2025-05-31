import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';

import 'notes_state.dart';

class NotesCubit extends Cubit<NoteState>{

  NotesCubit() : super(NoteInitial());


  List<NoteModel>? notes;

  fetchAllNotes()async{



      var noteBox = Hive.box<NoteModel>(kNotesBox);

      notes = noteBox.values.toList();






  }



}