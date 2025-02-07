import 'package:facebook_clone/modules/feed/presentation/widgets/stories/card_of_the_user_local_widget.dart';
import 'package:facebook_clone/modules/feed/presentation/widgets/stories/card_story_of_other_user_widget.dart';
import 'package:flutter/material.dart';

class ShowStoriesWidget extends StatelessWidget {
  ShowStoriesWidget({super.key});

  final stories = [
    {
      "username": "Eclesiaste Vaz",
      "quantity": 3,
      "assetUrl": "assets/images/IMG-20250117-WA0015.jpg"
    },
    {
      "username": "Ernesto Serão Baptista",
      "quantity": 1,
      "assetUrl": "assets/images/IMG-20241026-WA0096.jpg"
    },
    {
      "username": "Bernardo Nevongué",
      "quantity": 1,
      "assetUrl":
          "assets/images/457868246_484911697675452_6579548979262305135_n.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final listStories = List<Widget>.generate(
      stories.length,
      (index) {
        final assetUrl = stories[index]["assetUrl"] as String;
        final name = stories[index]["username"] as String;
        final quantity = stories[index]["quantity"] as int;
        return CardStoryOfOtherUserWidget(
            assetUrl: assetUrl, name: name, quantity: quantity);
      },
    );

    listStories.insert(0, const CardOfTheUserLocalWidget());

    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 220,
          child: CarouselView(
            itemExtent: 130,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            children: listStories,
          ),
        ),
      ),
    );
  }
}
