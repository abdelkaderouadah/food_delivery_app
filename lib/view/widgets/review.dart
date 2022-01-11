import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';

class CustomReview extends StatelessWidget {
  final String review, nbReview;
  final Color backgroundColor, textColor;
  const CustomReview({
    Key? key,
    required this.review,
    required this.nbReview,
    this.backgroundColor = Colors.white,
    this.textColor = primaryTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Center(
        child: RichText(
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            children: [
              TextSpan(
                text: review,
                style: textTheme.bodyText2!
                    .apply(fontWeightDelta: 2, color: textColor)
                    .copyWith(fontSize: 12),
              ),
              const WidgetSpan(
                child: Icon(Icons.star, color: Colors.orange, size: 15),
              ),
              TextSpan(
                text: "($nbReview+)",
                style: textTheme.bodyText2!
                    .apply(fontWeightDelta: 2)
                    .copyWith(fontSize: 10, color: subColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
