import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/ImageUser.dart';
import '../events/MainScreenChatEvents.dart';
import '../state/MainScreenChatState.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({super.key});

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  final messages = [];
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenChatEvents, MainScreenChatState>(
      builder: (context, state) {
        if (state.selectedChat == null) {
          return const Placeholder();
        }

        return Scaffold(
          appBar: AppBar(
            leading:  Row(
              children: [
                const ImageUser(size: 30),
                const SizedBox(
                  width: 8,
                ),
                Text(state.selectedChat!.name)
              ],
            ),
            leadingWidth: 120,
            elevation: 4,
          ),
          bottomNavigationBar: BottomAppBar(
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter a message',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          messages.add(_controller.text);
                        });
                      },
                      icon: const Icon(Icons.message),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: Flexible(
            child: ListView(
              reverse: true,
              children: [
                for (var item in [state.selectedChat!.previewMessage])
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LimitedBox(
                                maxWidth: 500,
                                child: Text(item)
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
