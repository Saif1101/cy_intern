import 'package:flutter/material.dart';

class AchievementDetailRow extends StatelessWidget {
  final String leadingText;
  final Widget? trailingWidget;
  final String? trailingText;

  const AchievementDetailRow({
    Key? key,
    this.trailingText,
    required this.leadingText,
    this.trailingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            leadingText,
            style: Theme.of(context).textTheme.headline4
          ),
        ),
        Expanded(flex: 1, child: trailingWidget ?? SizedBox.shrink()),
        trailingText == null
            ? SizedBox.shrink()
            : Expanded(
                child: Text(
                trailingText!,
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline3
              ))
      ],
    );
  }
}