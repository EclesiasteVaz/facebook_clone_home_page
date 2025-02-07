import 'package:flutter/material.dart';

class CardQuantityStoriesOfAUserWidget extends StatelessWidget {
  const CardQuantityStoriesOfAUserWidget(this.quantity, {super.key});
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ColoredBox(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Text(
            quantity.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
