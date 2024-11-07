
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app-module.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    );
  }
}


class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}