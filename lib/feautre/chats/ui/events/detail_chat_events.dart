
import 'package:bloc/bloc.dart';

import '../../domain/repository/chats_repository.dart';
import '../state/detail_chat_state.dart';

class DetailChatEvents extends Cubit<DetailChatState>{

  final ChatRepository repository;

  DetailChatEvents({required this.repository, required int id})
      : super(DetailChatState.initial(
            repository.getChats().firstWhere((elem) => elem.id == id)));
}