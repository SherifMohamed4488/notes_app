

class  AddNoteState{}

class AddNoteInitial extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{


}
class AddNoteLoading extends AddNoteState{}
class AddNoteFailure extends AddNoteState{

  AddNoteFailure(this.errMessage);
  final String errMessage;

}