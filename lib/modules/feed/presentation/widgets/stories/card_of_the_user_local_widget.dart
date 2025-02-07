import 'package:flutter/material.dart';

class CardOfTheUserLocalWidget extends StatelessWidget {
  const CardOfTheUserLocalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 150,
            child: ColoredBox(color: Colors.grey[200]!),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ColoredBox(
                    color: Colors.blue,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const Text("4 fotos recentes", textAlign: TextAlign.center),
              const SizedBox(height: 55)
            ],
          )
        ],
      ),
    );
  }
}
