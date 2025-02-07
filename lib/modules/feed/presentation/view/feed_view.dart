import 'package:facebook_clone/modules/feed/presentation/widgets/stories/show_stories_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/create_new_post_shourt_form_widget.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const CreateNewPostShourtFormWidget(),
          Divider(color: Colors.grey[300], height: 3),
          ShowStoriesWidget(),
        ],
      ),
    );
  }
}
