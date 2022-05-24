import 'package:educator/domain/entities/child.dart';

class ChildModel extends Child {
  ChildModel({
    //required int userId,
    int? id,
    String? child,
  }) : super(
          //userId: userId,
          id: id,
          child: child,
        );
  factory ChildModel.fromMap(dynamic map) {
    return ChildModel(
      //userId: map['userId'],
      id: map['id'],
      child: map['child'],
    );
  }
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'child': child,
    };

    return map;
  }
}
