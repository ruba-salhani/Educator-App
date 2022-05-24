import 'package:equatable/equatable.dart';

class Child extends Equatable {
  //final int userId;
  int? id;
  String? child;

  Child({
    //required this.userId,
    this.id,
    this.child,
  });

  @override
  List<Object?> get props => [id, child];
}
