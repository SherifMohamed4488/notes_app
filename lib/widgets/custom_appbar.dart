import 'package:flutter/material.dart';

import 'custom_search_icon.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Text("Notes" , style: TextStyle(fontSize: 30),),
        Spacer(),

        CustomSerachIcon()
      ],
    );


  }
}

