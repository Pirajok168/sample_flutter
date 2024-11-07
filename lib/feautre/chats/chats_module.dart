import 'package:first_lesson/feautre/chats/ui/events/detail_chat_events.dart';
import 'package:first_lesson/feautre/chats/ui/events/main_screen_chat_events.dart';
import 'package:first_lesson/feautre/chats/ui/screen/detail_chat.dart';
import 'package:first_lesson/feautre/chats/ui/screen/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/repository/chats_repository.dart';

class ChatsModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(ChatRepository.new);
  }

  @override
  void routes(r) {
    r.child('/',
        child: (context) => BlocProvider(
              create: (_) => MainScreenChatEvents(
                repository: Modular.get<ChatRepository>(),
              ),
              child: const MainScreenChat(),
            ),
        children: [
          ChildRoute('/dialog/:id',
              child: (context) => BlocProvider(
                  create: (_) => DetailChatEvents(
                      repository: Modular.get<ChatRepository>(),
                      id: int.parse(r.args.params['id'])),
                  child: const DetailChat()),
              transition: TransitionType.noTransition),
        ]);

    r.child('/fullscrenDialog/:id', child: (context) => BlocProvider(
        create: (_) => DetailChatEvents(
            repository: Modular.get<ChatRepository>(),
            id: int.parse(r.args.params['id'])),
        child: const DetailChat()),
        transition: TransitionType.rightToLeft);
  }
}
