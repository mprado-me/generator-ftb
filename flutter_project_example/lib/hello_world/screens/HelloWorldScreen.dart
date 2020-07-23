import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_project_example/hello_world/blocs/hello_world_bloc.dart';
import 'package:flutter_project_example/hello_world/blocs/hello_world_state.dart';
import 'package:flutter_project_example/hello_world/data_providers/HelloWorldStaticDataProvider.dart';
import 'package:flutter_project_example/hello_world/repositories/HelloWorldRepository.dart';
import 'package:flutter_project_example/shared/components/sample_bit_click_box/sample_bit_click_component.dart';
import 'package:flutter_project_example/shared/components/sample_increment_counter/sample_increment_counter_bloc.dart';
import 'package:flutter_project_example/shared/components/sample_increment_counter/sample_increment_counter_component.dart';
import 'package:flutter_project_example/shared/data_providers/sample_bit_click_static_data_provider.dart';
import 'package:flutter_project_example/shared/data_providers/sample_increment_counter_static_data_provider.dart';
import 'package:flutter_project_example/shared/repositories/sample_bit_click_repository.dart';
import 'package:flutter_project_example/shared/repositories/sample_increment_counter_repository.dart';

class HelloWorldScreen extends StatefulWidget {
  @override
  _HelloWorldScreen createState() => _HelloWorldScreen();
}

class _HelloWorldScreen extends State<HelloWorldScreen> {

  _HelloWorldScreen() {
    int nCounters = _sampleIncrementCounterRepository.nCounters();
    _sampleIncrementCounterBlocs = List.from(
        List<int>.generate(nCounters, (index) => index).map((index) {
          ;
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("helloWorld".tr()),
        ),
        body: MultiRepositoryProvider(
            providers: [
              RepositoryProvider<HelloWorldRepository>(
                create: (context) => HelloWorldStaticDataProvider(),
              ),
              RepositoryProvider<SampleIncrementCounterRepository>(
                create: (context) => SampleIncrementCounterStaticDataProvider(),
              ),
              RepositoryProvider<SampleBitClickRepository>(
                create: (context) => SampleBitClickDataProvider(),
              )
            ],
            child: MultiBlocProvider(
                providers: [
                  BlocProvider<HelloWorldBloc>(
                    create: (context) =>
                        HelloWorldBloc(RepositoryProvider.of(context)),
                  ),
                ],
                child: BlocBuilder<HelloWorldBloc, HelloWorldState>(
                  builder: (context, state) {
                    if (state is HelloWorldInitialState) {
                      return Container(
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Text(state.helloWorldModel.text),
                              ),
                              SampleIncrementCounterComponent(

                              ),
                              SampleBitClickComponent(
                                name: 'bit_click_0'
                              )
                            ],
                          )
                      );
                    }
                    return Container();
                  },
                )
            )
        )
    );
  }

  Iterable<Widget> buildCounters(BuildContext context) {
    SampleIncrementCounterRepository sampleIncrementCounterRepository = RepositoryProvider
        .of<SampleIncrementCounterRepository>(context);
    int nCounters = sampleIncrementCounterRepository.nCounters();

    // Criando uma lista com ints de 0 à n-1 para gerar os n contadores
    return List<int>.generate(nCounters, (index) => index).map((index) {
      Key key = Key('counter_${index.toString()}');

      return SampleIncrementCounterComponent(
          key: key
      );
    });
  }

  @override
  void dispose() {
    for (var bloc in this._sampleIncrementCounterBlocs) {
      bloc.close();
    }
    super.dispose();
  }
}
