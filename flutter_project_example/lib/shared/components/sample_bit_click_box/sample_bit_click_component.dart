import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_project_example/shared/components/sample_bit_click_box/sample_bit_click_bloc.dart';
import 'package:flutter_project_example/shared/components/sample_bit_click_box/sample_bit_click_event.dart';
import 'package:flutter_project_example/shared/components/sample_bit_click_box/sample_bit_click_state.dart';
import 'package:flutter_project_example/shared/repositories/sample_bit_click_repository.dart';

class SampleBitClickComponent extends StatelessWidget {
  static const Color color = Color.fromARGB(200, 135,206,250);
  final String name;

  const SampleBitClickComponent({
    @required this.name,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final SampleBitClickRepository sampleBitClickRepository =
        RepositoryProvider.of<SampleBitClickRepository>(context);

    return BlocProvider<SampleBitClickBloc>(
      create: (context) => SampleBitClickBloc(
          name: name,
          sampleBitClickRepository: sampleBitClickRepository
      ),
      child: BlocBuilder<SampleBitClickBloc, SampleBitClickState>(
        builder: (BuildContext context, state) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<SampleBitClickBloc>(context)
                  .add(Toggle());
            },
            child: Container(
              color: color,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    child: Text(
                      (state is SampleBitClickOnState ? 'on'.tr() : 'of'.tr()),
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
