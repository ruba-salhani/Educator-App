import 'package:educator/data/models/note_model.dart';
import 'package:educator/domain/entities/note.dart';

abstract class NotesRepository {
  Future<List<Note>> readNotes();
  Future saveNote(NoteModel note);
  Future deleteNote(int id);
  Future updateNote(NoteModel note);
}
