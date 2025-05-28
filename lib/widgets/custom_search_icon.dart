import 'package:flutter/material.dart';


class CustomSerachIcon extends StatelessWidget {
  const CustomSerachIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 49,
        width: 49,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withValues(alpha: 0.1),


        ),

        child: Icon(Icons.search , color: Colors.white, size: 28,));
  }
}