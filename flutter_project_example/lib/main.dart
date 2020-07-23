import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_project_example/routes.dart';

void main() {
  runApp(
      EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR')],
        path: 'assets/translations',
        fallbackLocale: Locale('en', 'US'),
        assetLoader: YamlAssetLoader(),
        child: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      debugPrint(context.locale.toString());

      return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routes: Routes.getRoutes(),
        initialRoute: Routes.HOME,
      );
  }
}
