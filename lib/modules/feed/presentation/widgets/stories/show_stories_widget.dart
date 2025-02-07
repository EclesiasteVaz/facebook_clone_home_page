import 'package:facebook_clone/modules/feed/presentation/widgets/stories/card_of_the_user_local_widget.dart';
import 'package:facebook_clone/modules/feed/presentation/widgets/stories/card_story_of_other_user_widget.dart';
import 'package:flutter/material.dart';

class ShowStoriesWidget extends StatelessWidget {
  const ShowStoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 250,
        child: CarouselView(
          itemExtent: 130,
          children: [
            CardOfTheUserLocalWidget(),
            CardStoryOfOtherUserWidget(
              assetUrl: "assets/images/IMG-20241026-WA0096.jpg",
              name: "Ernesto Serão Baptista",
              quantity: 1,
            ),
          ],
        ),
      ),
    );
  }
}
