import 'dart:async';
import 'dart:io' as io;
import 'package:educator/data/models/note_model.dart';
import 'package:educator/domain/entities/note.dart';
import 'package:educator/data/models/child_model.dart';
import 'package:educator/domain/entities/child.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database? _db;
  static const String dbName = 'Educator.db';
  static const String noteId = 'id';
  static const String note = 'note';
  static const String noteTable = 'noteTable';
  // static const String childId = 'childId';
  // static const String child = 'child';
  // static const String childTable = 'childTable';
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
    //db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $noteTable ($noteId INTEGER PRIMARY KEY AUTOINCREMENT, $note TEXT)");
    // await db.execute(
    //     "CREATE TABLE $childTable ($childId INTEGER PRIMARY KEY AUTOINCREMENT, $child TEXT)");
  }

  Future<List<Note>> getNotes() async {
    var dbEduc = await dbEducator;
    List<Map<String, dynamic>> maps = await dbEduc.query(noteTable);

    List<NoteModel> notes = [];
    if (maps.isNotEmpty) {
      for (int i = 0; i < maps.length; i++) {
        notes.add(NoteModel.fromMap(maps[i]));
      }
    }
    return notes;
  }

  Future saveNote(NoteModel note) async {
    var dbEduc = await dbEducator;
    note.id = await dbEduc.insert(noteTable, note.toMap());
    return note;
  }

  Future<int> deleteNote(int id) async {
    var dbEduc = await dbEducator;
    return await dbEduc
        .delete(noteTable, where: '$noteId = ?', whereArgs: [id]);
  }

  Future<int> updateNote(NoteModel note) async {
    var dbEduc = await dbEducator;
    return await dbEduc.update(noteTable, note.toMap(),
        where: '$noteId = ?', whereArgs: [note.id]);
  }

  // Future<List<Child>> getChildren() async {
  //   var dbEduc = await dbEducator;
  //   List<Map<String, dynamic>> maps = await dbEduc.query(childTable);

  //   List<ChildModel> children = [];
  //   if (maps.isNotEmpty) {
  //     for (int i = 0; i < maps.length; i++) {
  //       children.add(ChildModel.fromMap(maps[i]));
  //     }
  //   }
  //   return children;
  // }

  // Future saveChild(ChildModel child) async {
  //   var dbEduc = await dbEducator;
  //   child.id = await dbEduc.insert(childTable, child.toMap());
  //   return child;
  // }

  // Future<int> deleteChild(int id) async {
  //   var dbEduc = await dbEducator;
  //   return await dbEduc
  //       .delete(childTable, where: '$childId = ?', whereArgs: [id]);
  // }

  // Future<int> updateChild(ChildModel child) async {
  //   var dbEduc = await dbEducator;
  //   return await dbEduc.update(childTable, child.toMap(),
  //       where: '$childId = ?', whereArgs: [child.id]);
  // }

  Future close() async {
    var dbEduc = await dbEducator;
    dbEduc.close();
  }
}