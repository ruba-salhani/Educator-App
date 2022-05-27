import 'dart:io';

import 'package:equatable/equatable.dart';

class Child extends Equatable {
  int? id;
  String? child;
  // String? image;
  // File? imageFile;
  Child({
    this.id,
    this.child,
    // this.image,
    // this.imageFile,
  });

  @override
  List<Object?> get props => [id, child];
}
