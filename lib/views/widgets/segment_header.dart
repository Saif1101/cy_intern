import 'package:flutter/material.dart';

class SegmentHeader extends StatelessWidget {
  final String header;
  const SegmentHeader({
    required this.header,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Text(
        header,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}