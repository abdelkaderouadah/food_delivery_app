import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/price.dart';
import 'package:food_delivery_app/view/widgets/review.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';

class CustomCardFood extends StatelessWidget {
  final String backgoundImage,
      itemPrice,
      review,
      nbReview,
      itemTitle,
      itemDescription;
  final double width;
  final Color cardColor, cardReviewColor, textReviewColor;
  const CustomCardFood({
    Key? key,
    required this.backgoundImage,
    required this.itemPrice,
    required this.review,
    required this.nbReview,
    required this.itemTitle,
    required this.itemDescription,
    this.width = 260,
    this.cardColor = Colors.white,
    this.cardReviewColor = Colors.white,
    this.textReviewColor = primaryTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: width,
          padding: const EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: cardColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  backgoundImage,
                  fit: BoxFit.cover,
                  height: 150,
                  width: width,
                ),
              ),
              addVerticalSpace(15),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  itemTitle,
                  style: _themeData.textTheme.subtitle1!.copyWith(fontSize: 15),
                ),
              ),
              addVerticalSpace(5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  itemDescription,
                  style: _themeData.textTheme.subtitle2!.copyWith(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        //favorite
        Positioned(
          top: 10,
          right: 10,
          height: 30,
          width: 30,
          child: SquareIconButton(
            onPressed: () {},
            child: const Icon(
              Icons.favorite,
              color: whiteColor,
              size: 20,
            ),
          ),
        ),
        //prix
        Positioned(
          top: 10,
          left: 10,
          height: 30,
          width: 70,
          child: CustomPrice(
            price: itemPrice,
            priceSize: 18,
          ),
        ),
        //review
        Positioned(
          top: 130,
          left: 10,
          height: 30,
          width: 70,
          child: CustomReview(
            review: review,
            nbReview: nbReview,
            backgroundColor: cardReviewColor,
            textColor: textReviewColor,
          ),
        ),
      ],
    );
  }
}
