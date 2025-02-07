import 'package:flutter/material.dart';

class ButtonOfAppBarWidget extends StatelessWidget {
  const ButtonOfAppBarWidget(
      {super.key, required this.onPressed, required this.iconData});
  final IconData iconData;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.grey[300]),
      ),
      color: Colors.black,
      onPressed: onPressed,
      icon: Icon(iconData, size: 30),
    );
  }
}
