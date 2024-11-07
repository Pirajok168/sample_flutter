import 'package:first_lesson/feautre/chats/ui/events/MainScreenChatEvents.dart';
import 'package:first_lesson/feautre/chats/ui/state/MainScreenChatState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';


import '../../domain/repository/ChatsRepository.dart';
import '../components/ChatItem.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});


  @override
  State<ChatsScreen> createState() => _ChatsState();
}

class _ChatsState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<MainScreenChatEvents, MainScreenChatState>(
      builder: (context, state) {
        return ListView(
          children: [
            for(var item in state.chats)
              GestureDetector(
                onTap: (){
                  final media = MediaQuery.of(context);
                  if (media.size.width > 500) {
                    Modular.to.navigate('/dialog/${item.id}');
                  } else {
                    Modular.to.pushNamed('/fullscrenDialog/${item.id}');
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChatItem(titleMessage: item.name, previewMessage: item.previewMessage),
                ),
              )
          ],
        );
      },
    );
  }
}
