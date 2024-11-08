


import 'package:equatable/equatable.dart';
import 'package:first_lesson/feautre/chats/domain/model/chats_model.dart';

class MainScreenChatState extends Equatable {
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

  @override
  // TODO: implement props
  List<Object?> get props => [];

}