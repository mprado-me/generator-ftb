import 'package:equatable/equatable.dart';

abstract class SampleBitClickEvent extends Equatable {
  const SampleBitClickEvent();

  @override
  List<Object> get props => [];
}

class Toggle extends SampleBitClickEvent {}
