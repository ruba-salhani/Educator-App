part of 'behavior_cubit.dart';

abstract class BehaviorState extends Equatable {
  const BehaviorState();
}

class BehaviorInitial extends BehaviorState {
  @override
  List<Object> get props => [];
}

class GetBehaviorsState extends BehaviorState {
  final List<BehaviorModel> behviors;
  const GetBehaviorsState(this.behviors);
  @override
  List<Object> get props => [behviors];
}

class EmptyState extends BehaviorState {
  @override
  List<Object> get props => [];
}
