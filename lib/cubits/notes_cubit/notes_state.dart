import 'package:notes_app_project_tenth/models/note_model.dart';

class  NoteState{}

class NoteInitial extends NoteState{}
class NoteSuccess extends NoteState{

  NoteSuccess(this.notes);


  List<NoteModel> notes ;

}
class NoteLoading extends NoteState{}
class NoteFailure extends NoteState{

  NoteFailure(this.errMessage);
  final String errMessage;

}