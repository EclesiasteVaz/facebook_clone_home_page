import 'package:facebook_clone/src/shared/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

class CardPost extends StatelessWidget {
  const CardPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: CustomCircleAvatar(
                            assetImage:
                                "assets/images/457868246_484911697675452_6579548979262305135_n.jpg"),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Bernardo Nevongué",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "1h",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.more_horiz),
                      Icon(Icons.close),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
