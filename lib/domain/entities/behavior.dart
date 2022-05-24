import 'package:equatable/equatable.dart';

class Behavior extends Equatable {
  int? foreignKey;
  int? id;
  String? behavior;

  Behavior({
    this.foreignKey,
    this.id,
    this.behavior,
  });

  @override
  List<Object?> get props => [foreignKey, id, behavior];
}
