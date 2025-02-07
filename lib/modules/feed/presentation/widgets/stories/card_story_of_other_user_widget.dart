import 'package:facebook_clone/modules/feed/presentation/widgets/stories/card_quantity_stories_of_a_user_widget.dart';
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CardQuantityStoriesOfAUserWidget(quantity),
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
