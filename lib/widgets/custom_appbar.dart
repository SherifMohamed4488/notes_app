import 'package:flutter/material.dart';

import 'custom_icon.dart';



class CustomAppBar extends StatelessWidget {
  CustomAppBar({required this.iconData , required this.title});

  final String title ;
 final IconData iconData;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Text( title, style: TextStyle(fontSize: 30),),
        Spacer(),

        CustomIcon(icon: iconData,)
      ],
    );


  }


}

