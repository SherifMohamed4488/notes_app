


import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject{

  NoteModel({ required this.title, required this.color, required this.subTitle,required this.date});


  @HiveField(0)
   String title ;

  @HiveField(1)
   String subTitle ;

  @HiveField(2)
  final String date ;

  @HiveField(3)
   int color ;

}