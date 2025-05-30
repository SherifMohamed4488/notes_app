import 'package:flutter/material.dart';

import 'constants.dart';


class CustomButton extends StatelessWidget {

  CustomButton({
    // required this.text ,

    required this.onTap , this.isLoading  = false});

  bool isLoading ;

  // String text ;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(  color: kPrimaryColor,borderRadius: BorderRadius.circular(14)),
        height: 60,
        width: double.infinity,

        child: Center(

            child:isLoading ? SizedBox( height: 24 , width: 24,child: CircularProgressIndicator()) : const Text("Add",style: TextStyle(color:Colors.black, fontSize: 20  , fontWeight: FontWeight.bold),)),

      ),
    );
  }
}