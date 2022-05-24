import 'package:educator/domain/entities/behavior.dart';

class BehaviorModel extends Behavior {
  BehaviorModel({
    int? foreignKey,
    int? id,
    String? behavior,
    int trueCounter = 0,
    int falseCounter = 0,
    String? startingDate,
    String? endDate,
  }) : super(
          foreignKey: foreignKey,
          id: id,
          behavior: behavior,
          trueCounter: trueCounter,
          falseCounter: falseCounter,
          startingDate: startingDate,
          endDate: endDate,
        );
  factory BehaviorModel.fromMap(dynamic map) {
    return BehaviorModel(
      foreignKey: map['foreignKey'],
      id: map['id'],
      behavior: map['behavior'],
      trueCounter: map['trueCounter'],
      falseCounter: map['falseCounter'],
      startingDate: map['startingDate'],
      endDate: map['endDate'],
    );
  }
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'behavior': behavior,
      'foreignKey': foreignKey,
      'trueCounter': trueCounter,
      'falseCounter': falseCounter,
      'startingDate': startingDate,
      'endDate': endDate,
    };

    return map;
  }
}
