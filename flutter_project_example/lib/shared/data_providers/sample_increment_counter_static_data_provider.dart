import 'package:flutter_project_example/shared/repositories/sample_increment_counter_repository.dart';

class SampleIncrementCounterStaticDataProvider extends SampleIncrementCounterRepository {
  @override
  int getInitialValue(String key) {
    return 0;
  }

  @override
  int nCounters() {
    return 3;
  }
}
