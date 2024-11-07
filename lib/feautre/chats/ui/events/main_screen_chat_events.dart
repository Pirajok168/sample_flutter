import 'package:bloc/bloc.dart';
import 'package:first_lesson/feautre/chats/domain/model/chats_model.dart';

import '../../domain/repository/chats_repository.dart';
import '../state/main_screen_chat_state.dart';

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
