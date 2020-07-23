import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class HelloWorldModel extends Equatable {
  final String text;

  HelloWorldModel({@required this.text});

  @override
  List<Object> get props => [text];
}
