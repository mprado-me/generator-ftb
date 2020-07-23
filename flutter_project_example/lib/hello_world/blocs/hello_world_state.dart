import 'package:equatable/equatable.dart';
import 'package:flutter_project_example/hello_world/models/HelloWorldModel.dart';

abstract class HelloWorldState extends Equatable {
  const HelloWorldState();
}

class HelloWorldInitialState extends HelloWorldState {
  final HelloWorldModel helloWorldModel;

  HelloWorldInitialState(this.helloWorldModel) : super();

  @override
  List<Object> get props => [];
}
