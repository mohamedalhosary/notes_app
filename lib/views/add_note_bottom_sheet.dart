import 'package:flutter/material.dart';
import 'package:quran_app/views/custom_text_field.dart';
import 'package:quran_app/views/widgets/constants.dart';
import 'package:quran_app/views/widgets/custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
           CustomTextField(
            hint: 'Title', 
           ),
           SizedBox(height: 16,),
            CustomTextField(
            hint: 'Content', 
            maxLines: 5,
           ),
           SizedBox(height: 70,),
           CustomButtn(),
           SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}


