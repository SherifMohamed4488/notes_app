import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';


class CustomTextFeild extends StatelessWidget {
  CustomTextFeild( {required this.hint , this.maxLines = 1 ,  this.onSaved , this.onChanged});

  final String hint ;

 final void  Function(String ?) ? onSaved ;
 final void  Function(String ?) ?  onChanged ;


  final int maxLines;


  @override
  Widget build(BuildContext context) {


    return TextFormField(
      onChanged: onChanged ,
      onSaved: onSaved ,
      validator: (value){

        if(value?.isEmpty ?? true) {

          return "field is required";
        }else{

          return null;
        }


      },

      cursorColor:kPrimaryColor,

      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 24 , horizontal: 16),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white , fontSize: 16),


        border: outlineBorder(Colors.white),
        enabledBorder: outlineBorder(Colors.white),
        focusedBorder: outlineBorder(kPrimaryColor),
      ),

    );


  }

  OutlineInputBorder outlineBorder([color]) {


    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),




    );
  }
}

