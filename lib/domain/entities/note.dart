import 'package:equatable/equatable.dart';

class Note extends Equatable {
  //final int userId;
  int? id;
  String? note;

  Note({
    //required this.userId,
    this.id,
    this.note,
  });

  @override
  List<Object?> get props => [id, note];

  // @override
  // String toString() => 'Note(id: $id, note: $note)';
}
