import 'package:educator/data/datasourses/local/sqlite/db_helper.dart';
import 'package:educator/data/models/note_model.dart';
import 'package:educator/domain/entities/note.dart';

import 'package:educator/domain/repositories/notes_repository.dart';

class NotesRepositoryImpl implements NotesRepository {
  //final PostsRemoteDataSource _postsRemoteDataSource;
  final DBHelper _dbHelper;
  NotesRepositoryImpl(this._dbHelper);

  @override
  Future<List<Note>> readNotes() async {
    return await _dbHelper.getNotes();
  }

  @override
  Future saveNote(NoteModel note) async {
    return await _dbHelper.saveNote(note);
  }

  @override
  Future deleteNote(int id) async {
    return await _dbHelper.deleteNote(id);
  }

  @override
  Future updateNote(NoteModel note) async {
    return await _dbHelper.updateNote(note);
  }
}
