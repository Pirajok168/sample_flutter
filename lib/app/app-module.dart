import 'package:flutter_modular/flutter_modular.dart';

import '../feautre/chats/chats-module.dart';
import '../feautre/chats/ui/screen/MainScreen.dart';

class AppModule extends Module {

  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: ChatsModule());
  }
}