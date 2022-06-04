import 'package:cy_intern/common/theme_colors.dart';
import 'package:flutter/material.dart';

class DiscussionDetailWidget extends StatelessWidget {
  final String title;
  final String message;
  const DiscussionDetailWidget(
      {Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText1
        ),
        Text(
          message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style:  Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white)
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}