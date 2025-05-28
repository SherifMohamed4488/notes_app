import 'package:flutter/material.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        Text("Notes" , style: TextStyle(fontSize: 30),),
        Spacer(),

        Container(
          height: 49,
          width: 49,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(16),
            color: Colors.white.withValues(alpha: 0.1),


          ),

            child: Icon(Icons.search , color: Colors.white, size: 28,))
      ],
    );


  }
}