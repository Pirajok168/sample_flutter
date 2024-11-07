import 'package:flutter/material.dart';

import 'ImageUser.dart';

class ChatItem extends StatelessWidget {
  final String titleMessage;
  final String previewMessage;
  const ChatItem({super.key, required this.titleMessage, required this.previewMessage});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageUser(size: 50),
            SizedBox(
              width: 8,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleMessage,
                    maxLines: 1,
                  ),
                  Text(
                    previewMessage,
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          height: 1,
          thickness: 1,
          indent: 58,
          color: Colors.black.withAlpha(30),
        )
      ],
    );
  }
}
