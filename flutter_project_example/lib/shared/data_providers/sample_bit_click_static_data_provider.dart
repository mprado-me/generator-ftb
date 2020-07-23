import 'package:flutter_project_example/shared/repositories/sample_bit_click_repository.dart';

class SampleBitClickDataProvider extends SampleBitClickRepository {
  @override
  bool isOn(String name) {
    return false;
  }
}
