import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(

      backgroundColor: Colors.blue,
      radius: 35,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context , index) {

            return ColorItem();


          }
      ),
    );
  }
}