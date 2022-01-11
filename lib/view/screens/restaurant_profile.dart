import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/card_food.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:get/get.dart';

class RestaurantProfileView extends StatelessWidget {
  const RestaurantProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/images/food1.png",
                              fit: BoxFit.cover,
                              height: 150,
                              width: constraints.maxWidth,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            height: 34,
                            width: 34,
                            child: SquareIconButton(
                              onPressed: () => Get.back(),
                              width: 34,
                              borderRadius: 10,
                              buttonColor: primaryBackgroundColor,
                              borderColor: primaryBackgroundColor,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: blackColor,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            height: 30,
                            width: 30,
                            child: SquareIconButton(
                              onPressed: () {
                                Get.isDarkMode
                                    ? Get.changeTheme(lightTheme)
                                    : Get.changeTheme(darkTheme);
                              },
                              child: const Icon(
                                Icons.favorite,
                                color: whiteColor,
                                size: 20,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -50,
                            left: constraints.maxWidth * 0.36,
                            child: Container(
                              height: 100,
                              width: 100,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Get.isDarkMode
                                    ? darkBackgroundColor
                                    : primaryBackgroundColor,
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: whiteColor,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/images/logo/pizza_hut.png",
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -40,
                            left: constraints.maxWidth * 0.5,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Get.isDarkMode
                                    ? darkBackgroundColor
                                    : primaryBackgroundColor,
                              ),
                              child: const Icon(
                                Icons.check_circle_rounded,
                                color: Color(0xff029094),
                                size: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(60),
                    Text(
                      "Pizza Hut",
                      style: _themeData.textTheme.headline4,
                    ),
                    addVerticalSpace(5),
                    Text(
                      "4102 Pretty View Lanenda",
                      style: _themeData.textTheme.headline5!
                          .copyWith(fontSize: 12),
                    ),
                    addVerticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildCardTag(
                          Text(
                            "PIZZA",
                            style: _themeData.textTheme.caption,
                          ),
                          Get.isDarkMode
                              ? subBackgroundColor
                              : primaryBackgroundColor,
                        ),
                        _buildCardTag(
                          Text(
                            "PIZZA",
                            style: _themeData.textTheme.caption,
                          ),
                          Get.isDarkMode
                              ? subBackgroundColor
                              : primaryBackgroundColor,
                        ),
                      ],
                    ),
                    addVerticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/icons/delivery.png",
                          height: 13,
                          width: 13,
                        ),
                        addHorizontalSpace(5),
                        Text(
                          "Free delivery",
                          style: _themeData.textTheme.bodyText2,
                        ),
                        addHorizontalSpace(10),
                        Image.asset(
                          "assets/images/icons/time.png",
                          height: 13,
                          width: 13,
                          fit: BoxFit.contain,
                        ),
                        addHorizontalSpace(5),
                        Text(
                          "10-15 mins",
                          style: _themeData.textTheme.bodyText2,
                        ),
                      ],
                    ),
                    addVerticalSpace(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        addHorizontalSpace(10),
                        Text(
                          "4.5",
                          style: _themeData.textTheme.caption!
                              .copyWith(fontSize: 14),
                        ),
                        addHorizontalSpace(10),
                        Text(
                          "(30+)",
                          style: _themeData.textTheme.caption!
                              .copyWith(fontSize: 14),
                        ),
                        addHorizontalSpace(10),
                        TextButton(
                          onPressed: () {
                            //TODO SeeReview Button
                          },
                          child: Text(
                            'See Review',
                            style: _themeData.textTheme.subtitle2!
                                .apply(color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Featured Items",
                            style: _themeData.textTheme.bodyText1,
                          ),
                          addHorizontalSpace(10),
                          Container(
                            height: 15,
                            width: 15,
                            decoration: const BoxDecoration(
                              color: yellowColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Center(
                              child: Text(
                                "9",
                                style: _themeData.textTheme.caption!
                                    .apply(color: whiteColor)
                                    .copyWith(fontSize: 9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(10),
                    Container(
                      height: 220,
                      margin: const EdgeInsets.only(left: 20),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CustomCardFood(
                            width: 260,
                            backgoundImage: "assets/images/food1.png",
                            itemPrice: "10.78",
                            review: "4.8",
                            nbReview: "36",
                            itemTitle: "Chicken Hawaiian",
                            itemDescription: "Cheese and pineapple",
                            cardColor: Get.isDarkMode
                                ? subBackgroundColor
                                : primaryBackgroundColor,
                            cardReviewColor: Get.isDarkMode
                                ? lowColor
                                : primaryBackgroundColor,
                            textReviewColor:
                                Get.isDarkMode ? whiteColor : primaryTextColor,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            addHorizontalSpace(10),
                      ),
                    ),
                    addVerticalSpace(30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 40,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 40,
                              width: 100,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: primaryColor,
                              ),
                              child: Center(
                                child: Text("All",
                                    style: _themeData.textTheme.headline6!),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpace(20),
                    Container(
                      height: 220,
                      margin: const EdgeInsets.only(left: 20),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CustomCardFood(
                            width: 160,
                            backgoundImage: "assets/images/food1.png",
                            itemPrice: "10.78",
                            review: "4.8",
                            nbReview: "36",
                            itemTitle: "Chicken Hawaiian",
                            itemDescription: "Cheese and pineapple",
                            cardColor: Get.isDarkMode
                                ? subBackgroundColor
                                : primaryBackgroundColor,
                            cardReviewColor: Get.isDarkMode
                                ? lowColor
                                : primaryBackgroundColor,
                            textReviewColor:
                                Get.isDarkMode ? whiteColor : primaryTextColor,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            addHorizontalSpace(10),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCardTag(Widget text, Color cardColor) {
    return Card(
      elevation: 0,
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: text,
      ),
    );
  }
}
