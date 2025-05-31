import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_cubit.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_state.dart';
import 'package:notes_app_project_tenth/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_feild.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {


  final  GlobalKey <FormState> formKey = GlobalKey();
  AutovalidateMode autovalidation = AutovalidateMode.disabled;

  String? title , subTitle ;

  @override
  Widget build(BuildContext context) {
    return Form(

      key: formKey ,
      autovalidateMode: autovalidation ,

      child: Column(
        children: [

          SizedBox(height: 25,),

          CustomTextFeild(hint: "Title",
            onSaved: (value){

              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextFeild(

            onSaved: (value){

              subTitle = value;
            },
            hint: "Content", maxLines: 6,

          ),
          SizedBox(height: 32,),
          BlocBuilder<AddNoteCubit,AddNoteState>(

            builder: (context , state){




            return CustomButton(

              isLoading: state is AddNoteLoading ? true : false,


                onTap: (){


                  if(formKey.currentState!.validate()){

                    var currentDate =DateTime.now();
                    var formattedCurrentDate = DateFormat.yMd().format(currentDate);

                    formKey.currentState!.save();

                    var noteModel = NoteModel(title: title!,

                      color: Colors.blue.toARGB32(),
                      subTitle: subTitle!,
                      date: formattedCurrentDate,);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);


                  }else{

                    autovalidation = AutovalidateMode.always;
                    setState(() {

                    });
                  }


                }


            );

          },





          ),
          SizedBox(height: 32,),
  ]
      ),
    );
  }
}