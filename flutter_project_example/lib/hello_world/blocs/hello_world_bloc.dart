import 'package:bloc/bloc.dart';
import 'package:flutter_project_example/hello_world/repositories/HelloWorldRepository.dart';
import 'package:flutter_project_example/hello_world/blocs/hello_world_event.dart';
import 'package:flutter_project_example/hello_world/blocs/hello_world_state.dart';

class HelloWorldBloc extends Bloc<HelloWorldEvent, HelloWorldState> {
  final HelloWorldRepository _helloWorldRepository;

  HelloWorldBloc(this._helloWorldRepository) : super(HelloWorldInitialState(_helloWorldRepository.get()));

  @override
  Stream<HelloWorldState> mapEventToState(
    HelloWorldEvent event,
  ) async* {
    yield HelloWorldInitialState(_helloWorldRepository.get());
  }
}
