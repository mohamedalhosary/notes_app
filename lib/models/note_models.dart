import 'package:flutter/widgets.dart';

abstract class NoteModels {
  final String title;
  final String subTitle;
  final String data;
  final  int color;

  NoteModels( {
    required this.title,
    required this.subTitle,
    required this.data,
    required this.color
    });

}
