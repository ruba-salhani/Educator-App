import 'dart:async';
import 'dart:io' as io;
import 'package:educator/data/models/note_model.dart';
import 'package:educator/domain/entities/note.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database? _db;
  static const String id = 'id';
  static const String note = 'note';
  static const String noteTable = 'Notes';
  static const String dbName = 'Educator.db';
  Future<Database> get dbEducator async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, dbName);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $noteTable ($id INTEGER PRIMARY KEY AUTOINCREMENT, $note TEXT)");
  }

  Future<List<Note>> getNotes() async {
    var dbEduc = await dbEducator;
    List<Map<String, dynamic>> maps = await dbEduc.query(noteTable);

    List<NoteModel> tasks = [];
    if (maps.isNotEmpty) {
      for (int i = 0; i < maps.length; i++) {
        tasks.add(NoteModel.fromMap(maps[i]));
      }
    }
    return tasks;
  }

  Future save(NoteModel note) async {
    var dbEduc = await dbEducator;
    note.id = await dbEduc.insert(noteTable, note.toMap());
    return note;
  }

  Future close() async {
    var dbEduc = await dbEducator;
    dbEduc.close();
  }
}
