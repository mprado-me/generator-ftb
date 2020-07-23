import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_project_example/hello_world/models/HelloWorldModel.dart';
import 'package:flutter_project_example/hello_world/repositories/HelloWorldRepository.dart';

class HelloWorldStaticDataProvider extends HelloWorldRepository {
  @override
  HelloWorldModel get() {
    return HelloWorldModel(
      text: 'helloWorldWithExclamation'.tr()
    );
  }
}
