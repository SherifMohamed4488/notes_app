import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app_project_tenth/widgets/constants.dart';


class CustomTextFeild extends StatelessWidget {
  CustomTextFeild( {required this.hint , this.maxLines = 1});

  final String hint ;


  final int maxLines;


  @override
  Widget build(BuildContext context) {


    return TextField(


      cursorColor:kPrimaryColor,

      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 24 , horizontal: 16),
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor , fontSize: 16),

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

