import 'package:facebook_clone/modules/feed/presentation/widgets/posts/card_post.dart';
import 'package:facebook_clone/modules/feed/presentation/widgets/stories/show_stories_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/create_new_post_shourt_form_widget.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          const CreateNewPostShourtFormWidget(),
          const SizedBox(height: 2),
          ShowStoriesWidget(),
          const SizedBox(height: 2),
          const CardPost()
        ],
      ),
    );
  }
}
