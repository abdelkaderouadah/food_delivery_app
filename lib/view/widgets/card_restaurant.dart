import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/review.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';

class CustomCardRestaurant extends StatelessWidget {
  final String backgroundImage, review, nbReview, nameRestaurant;
  final double width;
  final Color cardColor, smallCardColor;
  const CustomCardRestaurant({
    Key? key,
    required this.backgroundImage,
    required this.review,
    required this.nbReview,
    required this.nameRestaurant,
    this.width = 260,
    this.cardColor = Colors.white,
    this.smallCardColor = Colors.white,
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
                  backgroundImage,
                  fit: BoxFit.cover,
                  height: 140,
                  width: width,
                ),
              ),
              addVerticalSpace(10),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          nameRestaurant,
                          style: _themeData.textTheme.subtitle1,
                        ),
                        addHorizontalSpace(10),
                        const Icon(
                          Icons.check_circle_rounded,
                          color: Color(0xff029094),
                          size: 17,
                        )
                      ],
                    ),
                    addVerticalSpace(5),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/icons/delivery.png",
                          height: 13,
                          width: 13,
                          fit: BoxFit.contain,
                        ),
                        addHorizontalSpace(5),
                        Text(
                          "Free delivery",
                          style: _themeData.textTheme.caption,
                        ),
                        addHorizontalSpace(20),
                        Image.asset(
                          "assets/images/icons/time.png",
                          height: 13,
                          width: 13,
                          fit: BoxFit.contain,
                        ),
                        addHorizontalSpace(5),
                        Text(
                          "10-15 mins",
                          style: _themeData.textTheme.caption,
                        ),
                      ],
                    ),
                    addVerticalSpace(5),
                    Row(
                      children: [
                        Card(
                          color: smallCardColor,
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            child: Text(
                              "BURGER",
                              style: _themeData.textTheme.caption,
                            ),
                          ),
                        ),
                        addHorizontalSpace(5),
                        Card(
                          elevation: 0,
                          color: smallCardColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            child: Text(
                              "CHICKEN",
                              style: _themeData.textTheme.caption,
                            ),
                          ),
                        ),
                        addHorizontalSpace(5),
                        Card(
                          elevation: 0,
                          color: smallCardColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            child: Text(
                              "FAST FOOD",
                              style: _themeData.textTheme.caption,
                            ),
                          ),
                        ),
                        addHorizontalSpace(25),
                      ],
                    ),
                  ],
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
        //review
        Positioned(
          top: 10,
          left: 10,
          height: 30,
          width: 70,
          child: CustomReview(
            review: review,
            nbReview: nbReview,
          ),
        ),
      ],
    );
  }
}
