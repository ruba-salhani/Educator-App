import 'package:educator/data/models/behavior_model.dart';
import 'package:educator/domain/entities/behavior.dart';

abstract class BehaviorsRepository {
  Future<List<BehaviorModel>> getBehaviors();
  Future saveBehavior(BehaviorModel behavior);
  Future deleteBehavior(int id);
  Future updateBehavior(BehaviorModel behavior);
}
