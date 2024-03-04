import 'package:flutter/material.dart';
import 'package:quran_app/views/widgets/custom_note_item.dart';
import 'package:quran_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text('Notes' ,style: TextStyle(fontSize: 28,),),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}

