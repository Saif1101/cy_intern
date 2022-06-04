import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class ImageWithBottomBlurForegroundText extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final ExactAssetImage image;
  final double height;
  final Color? textColor;
  const ImageWithBottomBlurForegroundText({
    Key? key,
    this.onTap,
    this.textColor,
    required this.height,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0.25),
        height: height + 50,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.yellow),
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.bottomLeft,
          color: Colors.grey.withOpacity(0.1),
          child: BlurryContainer(
            blur: 2,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Clan name: ",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                      ),
                      Text(
                        'FaZe Clan',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "28 members, ",
                        style: TextStyle(
                            color: textColor ?? Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '5 online',
                        style: TextStyle(
                            color: textColor ?? Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}