import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_example/shared/repositories/sample_increment_counter_repository.dart';

part 'sample_increment_counter_event.dart';

part 'sample_increment_counter_state.dart';

class SampleIncrementCounterBloc
    extends Bloc<SampleIncrementCounterEvent, SampleIncrementCounterState> {
  final String key;
  final SampleIncrementCounterRepository sampleIncrementCounterRepository;

  SampleIncrementCounterBloc({this.key, @required this.sampleIncrementCounterRepository})
      : super(SampleIncrementCounterState(
      count: sampleIncrementCounterRepository.getInitialValue(key)));

  @override
  Stream<SampleIncrementCounterState> mapEventToState(
      SampleIncrementCounterEvent event,
      ) async* {
    if(event is Increment) {
      yield SampleIncrementCounterState(count: state.count + 1);
    }
  }
}
