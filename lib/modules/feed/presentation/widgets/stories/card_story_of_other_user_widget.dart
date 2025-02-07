import 'package:flutter/material.dart';

class CardStoryOfOtherUserWidget extends StatelessWidget {
  const CardStoryOfOtherUserWidget(
      {super.key,
      required this.assetUrl,
      required this.name,
      required this.quantity});
  final String assetUrl;
  final String name;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(assetUrl, fit: BoxFit.cover),
        ColoredBox(
          color: const Color.fromARGB(73, 0, 0, 0),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(""),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
