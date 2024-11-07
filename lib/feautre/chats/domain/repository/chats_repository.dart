

import 'package:first_lesson/feautre/chats/domain/model/chats_model.dart';

class ChatRepository {

  final List<Chats> chats = [
    Chats(1, "Новости", "Трам победил на выборах в США")
  ];

  List<Chats> getChats() {

    return chats;
  }


  List<Chats> addELem(Chats chat) {
    return chats..add(chat);
  }
}