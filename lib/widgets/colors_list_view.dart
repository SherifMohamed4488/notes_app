import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project_tenth/cubits/add%20_note_cubit/add_note_cubit.dart';

import 'constants.dart';

class ColorItem extends StatelessWidget {
  ColorItem({required this.isActive , required this.color});

  bool isActive ;

  Color color;



  @override
  Widget build(BuildContext context) {


    return isActive ? CircleAvatar(

      backgroundColor: Colors.white,
      radius: 37,
      child: CircleAvatar(

        backgroundColor: color,
        radius: 33,
      ),
    ):  CircleAvatar(

      backgroundColor: color,
      radius: 37,
    );
  }
}

class ColorsListView extends StatefulWidget {

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 74,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context , index) {

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(

                onTap:(){

                  currentIndex =index;

                  BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                  setState(() {

                  });
                } ,
                child: ColorItem(
                  color: kColors [index],

                  isActive: currentIndex == index ,

                  ),
              ),
            );


          }
      ),
    );
  }
}