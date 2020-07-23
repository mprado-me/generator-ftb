part of 'sample_increment_counter_bloc.dart';

abstract class SampleIncrementCounterEvent extends Equatable {
  const SampleIncrementCounterEvent();

  @override
  List<Object> get props => [];
}

class Increment extends SampleIncrementCounterEvent {}
