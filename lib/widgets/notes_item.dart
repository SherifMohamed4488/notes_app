import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Container(
      padding: EdgeInsets.only(top: 8 , left: 16  , bottom: 22),


          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffFFCD7A)
          ),


          child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [

      ListTile(

        title: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Text("Flutter tips" , style: TextStyle(color: Colors.black , fontSize: 30) ,),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16 ),
          child: Text("Build your career with Tharwat Samy" , style: TextStyle( fontSize: 20, color: Colors.black.withValues(alpha: 0.5)),),
        ),

        trailing: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.trash , color: Colors.black , size: 30,)),

      ),
      SizedBox(height: 40,),
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0 , right: 24),
        child: Text("may21,2022" , style: TextStyle(color: Colors.black.withValues(alpha: 0.5)),),
      )
            ],


          )),
    );
  }
}