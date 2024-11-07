

import 'package:equatable/equatable.dart';

import '../../domain/model/chats_model.dart';

class DetailChatState  extends Equatable{
  final Chats selectedChat;

  const DetailChatState({
    required this.selectedChat
  });


  factory DetailChatState.initial(Chats selectedChat) {
    return DetailChatState(
        selectedChat: selectedChat
    );
  }

  @override
  List<Object?> get props => [];
}