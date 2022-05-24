import 'package:equatable/equatable.dart';

class Behavior extends Equatable {
  int? foreignKey;
  int? id;
  String? behavior;
  int trueCounter = 0;
  int falseCounter = 0;
  String? startingDate;
  String? endDate;
  Behavior({
    this.foreignKey,
    this.id,
    this.behavior,
    required this.trueCounter,
    required this.falseCounter,
    this.startingDate,
    this.endDate,
  });

  @override
  List<Object?> get props => [
        foreignKey,
        id,
        behavior,
        trueCounter,
        falseCounter,
        startingDate,
        endDate
      ];
}
