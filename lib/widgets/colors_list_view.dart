import 'package:flutter/material.dart';

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

  List <Color> colors = [

    Color(0xffFA003F),
    Color(0xffEE6123),
    Color(0xffFFCF00),
    Color(0xffFEEFE5),
    Color(0xff00916E),

  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 74,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context , index) {

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(

                onTap:(){

                  currentIndex =index;
                  setState(() {

                  });
                } ,
                child: ColorItem(
                  color: colors [index],

                  isActive: currentIndex == index ,

                  ),
              ),
            );


          }
      ),
    );
  }
}