import 'hello_world/screens/HelloWorldScreen.dart';

class Routes {
  static const String HOME = '/';

  static getRoutes() {
    return {
      HOME: (context) => HelloWorldScreen(),
    };
  }
}
