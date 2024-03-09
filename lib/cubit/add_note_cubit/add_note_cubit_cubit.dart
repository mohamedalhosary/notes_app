import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/models/note_models.dart';
import 'package:quran_app/views/widgets/constants.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModels note) async {

    emit(AddNoteCubitLoading());
    Hive.box(kNotesBox);

    try {
      var notesBox = Hive.box(kNotesBox);

      emit(AddNoteCubitSuccess());
      await notesBox.add(note);
    } catch (e) {

      AddNoteCubitFailure(e.toString());
    }
  }
}
