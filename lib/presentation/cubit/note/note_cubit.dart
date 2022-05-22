import 'package:bloc/bloc.dart';
import 'package:educator/data/models/note_model.dart';
import 'package:educator/domain/entities/note.dart';
import 'package:educator/domain/repositories/notes_repository.dart';
import 'package:equatable/equatable.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  final NotesRepository _notesRepository;
  NoteCubit(this._notesRepository) : super(NoteInitial()) {
    getNotes();
  }
  Future<void> getNotes() async {
    final List<Note> notes = await _notesRepository.readNotes();

    if (notes.isEmpty) {
      emit(EmptyState());
    } else {
      emit(GetNotesState(notes));
    }
  }

  void saveNote(String note) async {
    NoteModel newNote = NoteModel(note: note);
    _notesRepository.saveNote(newNote);
    emit(SaveNoteState());
  }
}
