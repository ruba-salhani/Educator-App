import 'package:educator/domain/entities/behavior.dart';

class BehaviorModel extends Behavior {
  BehaviorModel({
    int? foreignKey,
    int? id,
    String? behavior,
  }) : super(
          foreignKey: foreignKey,
          id: id,
          behavior: behavior,
        );
  factory BehaviorModel.fromMap(dynamic map) {
    return BehaviorModel(
      foreignKey: map['foreignKey'],
      id: map['id'],
      behavior: map['behavior'],
    );
  }
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'behavior': behavior,
      'foreignKey': foreignKey,
    };

    return map;
  }
}
