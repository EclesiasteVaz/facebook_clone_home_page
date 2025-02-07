import 'package:flutter/material.dart';

class ShowStoriesWidget extends StatelessWidget {
  const ShowStoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 250,
      child: ColoredBox(color: Colors.white),
    );
  }
}
