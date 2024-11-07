

import '../../domain/model/Chats.dart';

class DetailChatState {
  final Chats selectedChat;

  const DetailChatState({
    required this.selectedChat
  });


  factory DetailChatState.initial(Chats selectedChat) {
    return DetailChatState(
        selectedChat: selectedChat
    );
  }
}