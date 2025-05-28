import 'package:flutter/material.dart';
import 'package:notes_app_project_tenth/widgets/custom_button.dart';
import 'package:notes_app_project_tenth/widgets/custom_text_feild.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              SizedBox(height: 25,),
          
              CustomTextFeild(hint: "Title",),
              SizedBox(height: 20),
              CustomTextFeild(hint: "Content", maxLines: 6,),
              SizedBox(height: 32,),
              CustomButton(text: "Add", onTap: (){}),
              SizedBox(height: 32,),




            ],
          ),
        ),
      ),
    );
  }
}