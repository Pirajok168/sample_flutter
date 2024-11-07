


import 'package:equatable/equatable.dart';
import 'package:first_lesson/feautre/chats/domain/model/Chats.dart';

class MainScreenChatState {
  final Chats? selectedChat;
  final List<Chats> chats;

  const MainScreenChatState({
    this.selectedChat,
    required this.chats
  });


  factory MainScreenChatState.initial(List<Chats> chats) {
    return MainScreenChatState(
      selectedChat: null,
      chats: chats
    );
  }

  copyWith({
    Chats? selectedChat,
    required List<Chats> chats
  }) {
    return MainScreenChatState(
        selectedChat: selectedChat,
        chats: chats
    );
  }

}