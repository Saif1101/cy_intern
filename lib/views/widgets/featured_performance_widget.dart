import 'package:flutter/material.dart';

class FeaturedPerformanceDetailRow extends StatelessWidget {
  const FeaturedPerformanceDetailRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
            child: Image.asset(
          'assets/featured_performance.jpg',
          fit: BoxFit.cover,
        )),
        SizedBox(
          width: 18,
        ),
        Flexible(
          child: Text(
            'Lorem ipsum dolor sit amet',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)
          ),
        )
      ],
    );
  }
}