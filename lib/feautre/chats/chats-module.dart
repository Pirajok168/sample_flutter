

import 'package:first_lesson/feautre/chats/ui/events/MainScreenChatEvents.dart';
import 'package:first_lesson/feautre/chats/ui/screen/MainScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/repository/ChatsRepository.dart';

class ChatsModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(ChatRepository.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => BlocProvider(
      create: (_) => MainScreenChatEvents(
        repository: ChatRepository(),
      ),
      child: const MainScreenChat()
    ));
  }
}