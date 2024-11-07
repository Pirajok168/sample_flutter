


import 'package:equatable/equatable.dart';
import 'package:first_lesson/feautre/chats/domain/model/Chats.dart';

class MainScreenChatState {
  final List<Chats> chats;

  const MainScreenChatState({
    required this.chats
  });


  factory MainScreenChatState.initial(List<Chats> chats) {
    return MainScreenChatState(
      chats: chats
    );
  }

  copyWith({
    Chats? selectedChat,
    required List<Chats> chats
  }) {
    return MainScreenChatState(
        chats: chats
    );
  }

}