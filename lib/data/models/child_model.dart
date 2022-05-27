import 'dart:io';

import 'package:educator/domain/entities/child.dart';

class ChildModel extends Child {
  ChildModel({
    int? id,
    String? child,
    // String? image,
    // File? imageFile,
  }) : super(
          id: id,
          child: child,
          // image: image,
          // imageFile: imageFile,
        );
  factory ChildModel.fromMap(dynamic map) {
    return ChildModel(
      id: map['id'],
      child: map['child'],
      //image: map['image'],
    );
  }
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'child': child,
      //'image': image,
    };

    return map;
  }
}
