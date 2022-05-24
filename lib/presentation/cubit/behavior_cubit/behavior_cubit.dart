import 'package:bloc/bloc.dart';
import 'package:educator/data/models/behavior_model.dart';
import 'package:educator/domain/repositories/behavior_repository.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/behavior.dart';
import 'package:equatable/equatable.dart';

part 'behavior_state.dart';

class BehaviorCubit extends Cubit<BehaviorState> {
  final BehaviorsRepository _behaviorsRepository;
  BehaviorCubit(this._behaviorsRepository) : super(BehaviorInitial()) {
    getBehaviors();
  }

  List<BehaviorModel> get behaviors => [];
  Future<void> getBehaviors() async {
    final List<BehaviorModel> behaviors =
        await _behaviorsRepository.getBehaviors();

    if (behaviors.isEmpty) {
      emit(EmptyState());
    } else {
      emit(GetBehaviorsState(behaviors));
    }
  }

  void saveBehavior(String behavior, int foreignKey, String startingDate,
      String endDate) async {
    BehaviorModel newBehavior = BehaviorModel(
      behavior: behavior,
      foreignKey: foreignKey,
      // trueCounter: trueCounter,
      // falseCounter: falseCounter,
      startingDate: startingDate,
      endDate: endDate,
    );
    _behaviorsRepository.saveBehavior(newBehavior);
    getBehaviors();
    //emit(SaveNoteState());
    //emit(getChildrenState(notes));
  }

  void deleteBehavior(int id) async {
    //ChildModel newChild = ChildModel(note: note);
    _behaviorsRepository.deleteBehavior(id);
    getBehaviors();
  }

  void updateBehavior(int id, String behavior) async {
    BehaviorModel newBehavior = BehaviorModel(id: id, behavior: behavior);
    _behaviorsRepository.updateBehavior(newBehavior);
    getBehaviors();
  }
}
