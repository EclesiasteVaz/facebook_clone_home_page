import 'package:flutter/material.dart';

class LegendTextWidget extends StatefulWidget {
  LegendTextWidget(this.text, {super.key});
  final String text;

  @override
  State<LegendTextWidget> createState() => _LegendTextWidgetState();
}

class _LegendTextWidgetState extends State<LegendTextWidget> {
  final showComplete = ValueNotifier(false);

  late String secundText;

  @override
  void initState() {
    super.initState();
    secundText = "${widget.text.substring(0, 100)}... ver mais";
  }

  @override
  Widget build(BuildContext context) {
    if (widget.text.length < 100) {
      showComplete.value = true;
    }

    return ListenableBuilder(
      listenable: showComplete,
      builder: (context, _) {
        return InkWell(
          onTap: _seeMoreOrLessTheText,
          child: Text(
            secundText,
            maxLines: !showComplete.value ? null : 2,
            overflow: !showComplete.value ? null : TextOverflow.ellipsis,
          ),
        );
      },
    );
  }

  _seeMoreOrLessTheText() {
    if (!showComplete.value) {
      secundText = "${widget.text.substring(0, 100)}... ver mais";
    } else {
      secundText = widget.text;
    }

    showComplete.value = !showComplete.value;
  }
}
