import 'package:cy_intern/common/theme_colors.dart';
import 'package:flutter/material.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          'See More',
          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14, color: ThemeColors.primaryYellow)
        ),
      ),
    );
  }
}