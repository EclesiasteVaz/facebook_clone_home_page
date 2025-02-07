import 'package:facebook_clone/modules/feed/presentation/widgets/posts/legend_text_widget.dart';
import 'package:facebook_clone/src/shared/widgets/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

class CardPost extends StatelessWidget {
  const CardPost({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
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
                      Icon(Icons.more_horiz, color: Colors.black87),
                      SizedBox(width: 4),
                      Icon(Icons.close, color: Colors.black87),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, bottom: 16, top: 0),
            child: LegendTextWidget(
              "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Odit rerum, omnis dolorem quae similique ipsam sequi vero! Expedita voluptatibus, quam enim, quisquam perspiciatis tenetur hic repellat numquam consectetur dolorum cumque!",
            ),
          ),
          Image.asset(
            "assets/images/460172742_495302919969663_1363714754621751762_n.jpg",
            width: MediaQuery.sizeOf(context).width,
            height: 400,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
