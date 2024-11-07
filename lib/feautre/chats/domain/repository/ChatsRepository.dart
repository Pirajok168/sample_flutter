

import 'package:first_lesson/feautre/chats/domain/model/Chats.dart';

class ChatRepository {

  List<Chats> getChats() {

    return [
      Chats(1, "Новости", "Трам победил на выборах в США")
    ];
  }
}