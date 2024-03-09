import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quran_app/cubit/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:quran_app/models/note_models.dart';
import 'package:quran_app/simple_bloc_observer.dart';
import 'package:quran_app/views/notes_views.dart';
import 'package:quran_app/views/widgets/constants.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelsAdapter());
  runApp(const MyApp());
}
// this notes app by eng mohamed alhosary

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubitCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Unbounded'),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
