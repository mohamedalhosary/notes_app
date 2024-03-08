import 'package:flutter/material.dart';
import 'package:quran_app/views/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 32,),
         CustomTextField()
      
        ],
      ),
    );
  }
}
