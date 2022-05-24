import 'package:educator/data/datasourses/local/sqlite/db_helper.dart';
import 'package:educator/data/models/behavior_model.dart';
import 'package:educator/domain/repositories/behavior_repository.dart';
import 'package:educator/presentation/views/screens/behaviors/widgets/behavior.dart';

class BehaviorsRepositoryImpl implements BehaviorsRepository {
  //final PostsRemoteDataSource _postsRemoteDataSource;
  final DBHelper _dbHelper;
  BehaviorsRepositoryImpl(this._dbHelper);

  @override
  Future<List<BehaviorModel>> getBehaviors() async {
    return await _dbHelper.getBehaviors();
  }

  @override
  Future saveBehavior(BehaviorModel behavior) async {
    return await _dbHelper.saveBehavior(behavior);
  }

  @override
  Future deleteBehavior(int id) async {
    return await _dbHelper.deleteBehavior(id);
  }

  @override
  Future updateBehavior(BehaviorModel behavior) async {
    return await _dbHelper.updateBehavior(behavior);
  }
}
