import 'package:flutter/material.dart';

class ImageUser extends StatelessWidget {
  final double size;
  const ImageUser({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      clipBehavior: Clip.hardEdge,
      child: const Placeholder(),
    );
  }
}
