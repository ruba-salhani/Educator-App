// import 'package:bloc/bloc.dart';
// import 'package:educator/data/models/child_model.dart';
// import 'package:educator/domain/entities/child.dart';
// import 'package:educator/domain/repositories/child_repository.dart';
// import 'package:equatable/equatable.dart';

// part 'child_state.dart';

// class ChildCubit extends Cubit<ChildState> {
//   final ChildrenRepository _childrenRepository;
//   ChildCubit(this._childrenRepository) : super(ChildInitial()) {
//     getChildren();
//   }

//   List<Child> get children => [];
//   Future<void> getChildren() async {
//     final List<Child> children = await _childrenRepository.getChildren();

//     if (children.isEmpty) {
//       emit(EmptyState());
//     } else {
//       emit(GetChildrenState(children));
//     }
//   }

//   void saveChild(String child) async {
//     ChildModel newChild = ChildModel(child: child);
//     _childrenRepository.saveChild(newChild);
//     getChildren();
//     //emit(SaveNoteState());
//     //emit(getChildrenState(notes));
//   }

//   void deleteChild(int id) async {
//     //ChildModel newChild = ChildModel(note: note);
//     _childrenRepository.deleteChild(id);
//     getChildren();
//   }

//   void updateChild(int id, String child) async {
//     ChildModel newChild = ChildModel(id: id, child: child);
//     _childrenRepository.updateChild(newChild);
//     getChildren();
//   }
// }
