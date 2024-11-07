import 'package:bloc/bloc.dart';
import 'package:first_lesson/feautre/chats/domain/model/Chats.dart';

import '../../domain/repository/ChatsRepository.dart';
import '../state/MainScreenChatState.dart';

class MainScreenChatEvents extends Cubit<MainScreenChatState> {
  final ChatRepository repository;

  MainScreenChatEvents({required this.repository})
      : super(MainScreenChatState.initial(repository.getChats()));


  addDialog() async {
    emit(
      state.copyWith(chats: state.chats..add(Chats(2, "Вилсаком", 'огооо новый айфон'))),
    );
  }

  selectChat(Chats chat){
    emit(
        state.copyWith(chats: state.chats, selectedChat: chat)
    );
  }
}
