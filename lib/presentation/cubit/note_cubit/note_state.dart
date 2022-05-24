part of 'note_cubit.dart';

abstract class NoteState extends Equatable {
  const NoteState();

  //get notes => null;
}

class NoteInitial extends NoteState {
  @override
  List<Object> get props => [];
}

class GetNotesState extends NoteState {
  final List<Note> notes;
  const GetNotesState(this.notes);
  @override
  List<Object> get props => [notes];
}

class EmptyState extends NoteState {
  @override
  List<Object> get props => [];
}

// class SaveNoteState extends NoteState {
//   @override
//   List<Object> get props => [];
// }
