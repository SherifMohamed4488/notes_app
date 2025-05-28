import 'package:flutter/material.dart';


class CustomIcon extends StatelessWidget {
  CustomIcon({required this.icon});


  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 49,
        width: 49,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withValues(alpha: 0.1),


        ),

        child: IconButton(onPressed: (){},icon: Icon(  icon , color: Colors.white, size: 28),),);
  }

}