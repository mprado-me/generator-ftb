import 'package:equatable/equatable.dart';

abstract class SampleBitClickState extends Equatable {
  @override
  List<Object> get props => [];
}

class SampleBitClickOffState extends SampleBitClickState {}

class SampleBitClickOnState extends SampleBitClickState {}
