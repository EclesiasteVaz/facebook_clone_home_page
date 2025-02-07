import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    this.isActive = false,
    this.assetImage =
        "assets/images/460172742_495302919969663_1363714754621751762_n.jpg",
  });
  final bool isActive;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(assetImage),
          ),
          if (isActive)
            const Align(
              alignment: Alignment.bottomRight,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                child: ColoredBox(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(3.0),
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: ColoredBox(
                          color: Color.fromARGB(255, 10, 204, 110),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
