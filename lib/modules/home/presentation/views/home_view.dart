import 'package:facebook_clone/modules/feed/presentation/view/feed_view.dart';
import 'package:facebook_clone/modules/home/presentation/widgets/button_of_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String url = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final double iconTabSize = 40;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
          ),

          /// buttons da app bar
          actions: [
            ButtonOfAppBarWidget(
                onPressed: () {}, iconData: Icons.add_outlined),
            const SizedBox(width: 10),
            ButtonOfAppBarWidget(onPressed: () {}, iconData: Icons.search),
            const SizedBox(width: 10),
            ButtonOfAppBarWidget(onPressed: () {}, iconData: Icons.menu),
            const SizedBox(width: 4)
          ],
          bottom: TabBar(
            indicator: const BoxDecoration(color: Colors.transparent),
            tabs: [
              Image.asset(
                "assets/icons/Captura de ecrã de 2025-02-07 10-47-58.png",
                width: iconTabSize,
                height: iconTabSize,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icons/Captura de ecrã de 2025-02-07 10-47-58.png",
                width: iconTabSize,
                height: iconTabSize,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icons/Captura de ecrã de 2025-02-07 10-47-58.png",
                width: iconTabSize,
                height: iconTabSize,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icons/Captura de ecrã de 2025-02-07 10-47-58.png",
                width: iconTabSize,
                height: iconTabSize,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/icons/Captura de ecrã de 2025-02-07 10-47-58.png",
                width: iconTabSize,
                height: iconTabSize,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
        body: const FeedView(),
      ),
    );
  }
}
