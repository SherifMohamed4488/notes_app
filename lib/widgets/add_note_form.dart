import 'package:flutter/material.dart';

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
          CustomButton(text: "Add",

              onTap: (){

                if(formKey.currentState!.validate()){

                  formKey.currentState!.save();


                }else{

                  autovalidation = AutovalidateMode.always;
                  setState(() {

                  });
                }


              }


          ),
          SizedBox(height: 32,),




        ],

      ),
    );
  }
}