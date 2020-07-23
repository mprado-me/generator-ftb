import 'package:equatable/equatable.dart';
import 'package:flutter_project_example/hello_world/models/HelloWorldModel.dart';

class HelloWorldState extends Equatable {
  final HelloWorldModel helloWorldModel;

  HelloWorldState(this.helloWorldModel) : super();

  @override
  List<Object> get props => [helloWorldModel];
}
