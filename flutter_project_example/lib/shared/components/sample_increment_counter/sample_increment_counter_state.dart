part of 'sample_increment_counter_bloc.dart';

class SampleIncrementCounterState extends Equatable {
  final int count;

  const SampleIncrementCounterState({@required this.count});

  @override
  List<Object> get props => [count];
}
