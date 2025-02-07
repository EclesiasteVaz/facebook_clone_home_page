import 'package:facebook_clone/src/shared/widgets/custom_circle_avatar.dart';
import 'package:facebook_clone/src/shared/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class CreateNewPostShourtFormWidget extends StatelessWidget {
  const CreateNewPostShourtFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: ListTile(
        minTileHeight: 80,
        leading: CustomCircleAvatar(
          isActive: true,
        ),
        title: TextFieldWidget(),
        trailing: Wrap(
          direction: Axis.vertical,
          children: [
            Icon(
              Icons.photo,
              color: Colors.green,
            ),
            Text("Foto"),
          ],
        ),
      ),
    );
  }
}
