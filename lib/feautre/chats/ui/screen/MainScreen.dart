

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../domain/repository/ChatsRepository.dart';
import '../events/MainScreenChatEvents.dart';
import 'ChatsScreen.dart';
import 'DetailChat.dart';

class MainScreenChat extends StatefulWidget {
  const MainScreenChat({super.key});

  @override
  State<MainScreenChat> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreenChat> {
  double _width = 200; // Начальная ширина


  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Row(
            children: <Widget>[
              if (media.size.width > 500)
                GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    setState(() {
                      _width += details.delta.dx;
                      _width = _width.clamp(200.0, 500.0); // Ограничиваем минимальную и максимальную ширину
                    });
                  },
                  child: Container(
                    width: _width,
                    decoration: const BoxDecoration(border: Border(right: BorderSide())),
                    child: const SizedBox(width: 300, child: ChatsScreen()),
                  ),
                )
              else
                const Expanded(child: ChatsScreen()),
              if (media.size.width > 500) const Expanded(child: DetailChat()),
            ],
          );
        }
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        BlocProvider.of<MainScreenChatEvents>(context).addDialog();
      }),
    );
  }
}