part of 'child_cubit.dart';

abstract class ChildState extends Equatable {
  const ChildState();
}

class ChildInitial extends ChildState {
  @override
  List<Object> get props => [];
}

class GetChildrenState extends ChildState {
  final List<Child> children;
  const GetChildrenState(this.children);
  @override
  List<Object> get props => [children];
}

class EmptyState extends ChildState {
  @override
  List<Object> get props => [];
}
