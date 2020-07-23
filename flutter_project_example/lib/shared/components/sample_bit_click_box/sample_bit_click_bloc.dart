import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_example/shared/components/sample_bit_click_box/sample_bit_click_event.dart';
import 'package:flutter_project_example/shared/components/sample_bit_click_box/sample_bit_click_state.dart';
import 'package:flutter_project_example/shared/repositories/sample_bit_click_repository.dart';


class SampleBitClickBloc
    extends Bloc<SampleBitClickEvent, SampleBitClickState> {
  final String name;
  final SampleBitClickRepository sampleBitClickRepository;

  SampleBitClickBloc({@required this.name, @required this.sampleBitClickRepository})
      : super(sampleBitClickRepository.isOn(name) ? SampleBitClickOnState() : SampleBitClickOffState());

  @override
  Stream<SampleBitClickState> mapEventToState(
      SampleBitClickEvent event,
      ) async* {
    if(event is Toggle) {
      if(state is SampleBitClickOnState) {
        yield SampleBitClickOffState();
      } else if(state is SampleBitClickOffState) {
        yield SampleBitClickOnState();
      }
    }
  }
}
