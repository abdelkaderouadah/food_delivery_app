import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';

class CustomPrice extends StatelessWidget {
  final String price;
  final double priceSize, currencySize;
  final Color currencyColor, priceColor, cardColor;
  const CustomPrice(
      {Key? key,
      required this.price,
      this.priceSize = 14,
      this.currencySize = 12,
      this.currencyColor = primaryColor,
      this.priceColor = blackColor,
      this.cardColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      // height: 30,
      // width: 80,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            children: [
              TextSpan(text: "\$", style: TextStyle(color: currencyColor)),
              TextSpan(
                  text: price,
                  style: textTheme.headline5!
                      .apply(color: priceColor)
                      .copyWith(fontSize: priceSize))
            ],
          ),
        ),
      ),
    );
  }
}
