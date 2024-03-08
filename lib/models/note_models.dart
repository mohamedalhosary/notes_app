import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';


part 'note_models.g.dart';
@HiveType(typeId: 0)
 class NoteModels extends HiveObject {

  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final  int color;

  NoteModels( {
    required this.title,
    required this.subTitle,
    required this.data,
    required this.color
    });

}
