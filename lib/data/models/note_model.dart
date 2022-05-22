import 'package:educator/domain/entities/note.dart';

class NoteModel extends Note {
  NoteModel({
    //required int userId,
    int? id,
    String? note,
  }) : super(
          //userId: userId,
          id: id,
          note: note,
        );
  factory NoteModel.fromMap(dynamic map) {
    return NoteModel(
      //userId: map['userId'],
      id: map['id'],
      note: map['note'],
    );
  }
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'note': note,
    };

    return map;
  }
}
