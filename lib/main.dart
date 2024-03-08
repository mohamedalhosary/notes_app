import 'package:flutter/material.dart';
import 'package:quran_app/views/notes_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicatio.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Unbounded'
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
     
    );
  }
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


