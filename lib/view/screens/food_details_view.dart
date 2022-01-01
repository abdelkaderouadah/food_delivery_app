import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/icon_button.dart';
import 'package:food_delivery_app/view/widgets/price.dart';
import 'package:food_delivery_app/view/widgets/review.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:get/get.dart';

class FoodDetailsView extends StatelessWidget {
  const FoodDetailsView({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/food1.png",
                            fit: BoxFit.cover,
                            height: 200,
                            width: 320,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          height: 34,
                          width: 34,
                          child: SquareIconButton(
                            onPressed: () {
                              //TODO back button
                              Get.isDarkMode
                                  ? Get.changeTheme(lightTheme)
                                  : Get.changeTheme(darkTheme);
                            },
                            width: 34,
                            borderRadius: 10,
                            buttonColor: primaryBackgroundColor,
                            borderColor: primaryBackgroundColor,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: blackColor,
                                size: 20,
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
                            onPressed: () {},
                            child: const Icon(
                              Icons.favorite,
                              color: whiteColor,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Ground Beef Tacos",
                        style: _themeData.textTheme.headline3,
                      ),
                    ),
                    addVerticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 25,
                          color: yellowColor,
                        ),
                        addHorizontalSpace(10),
                        Text(
                          "4.5",
                          style: _themeData.textTheme.subtitle1,
                        ),
                        addHorizontalSpace(10),
                        Text(
                          "(30+)",
                          style: _themeData.textTheme.subtitle2,
                        ),
                        addHorizontalSpace(10),
                        TextButton(
                          onPressed: () {
                            //TODO SeeReview Button
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            child: Text(
                              "See Review",
                              style: _themeData.textTheme.button!.apply(
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomPrice(
                          price: "9.50",
                          currencyColor:
                              Get.isDarkMode ? whiteColor : primaryTextColor,
                          priceColor:
                              Get.isDarkMode ? whiteColor : primaryTextColor,
                          currencySize: 25,
                          priceSize: 31,
                          cardColor: Get.isDarkMode
                              ? darkBackgroundColor
                              : primaryBackgroundColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SquareIconButton(
                              onPressed: () {},
                              buttonColor: Get.isDarkMode
                                  ? darkBackgroundColor
                                  : primaryBackgroundColor,
                              borderColor: Get.isDarkMode
                                  ? primaryBackgroundColor
                                  : primaryColor,
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: Get.isDarkMode
                                        ? primaryBackgroundColor
                                        : primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            addHorizontalSpace(10),
                            Text(
                              "02",
                              style: _themeData.textTheme.subtitle1,
                            ),
                            addHorizontalSpace(10),
                            SquareIconButton(
                              onPressed: () {},
                              buttonColor: Get.isDarkMode
                                  ? darkBackgroundColor
                                  : primaryBackgroundColor,
                              borderColor: Get.isDarkMode
                                  ? primaryBackgroundColor
                                  : primaryColor,
                              child: Icon(
                                Icons.add,
                                color: Get.isDarkMode
                                    ? primaryBackgroundColor
                                    : primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    addVerticalSpace(10),
                    Text(
                      "Brown the beef better. Lean ground beef – I \nlike to use 85% lean angus. Garlic – use fresh \nchopped. Spices – chili powder, cumin, onion \npowder.",
                      style: _themeData.textTheme.bodyText2,
                    ),
                    addVerticalSpace(20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Choice of Add On",
                        style: _themeData.textTheme.headline4,
                      ),
                    ),
                    // addVerticalSpace(10),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return RadioListTile(
                            value: 1,
                            groupValue: () {},
                            onChanged: (_) {},
                            toggleable: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pepper Julienned",
                                  style: _themeData.textTheme.subtitle1,
                                ),
                                Text(
                                  "+\$2.30",
                                  style: _themeData.textTheme.caption!
                                      .copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                            secondary: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/pepper.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    addVerticalSpace(10),
                    CustomIconButton(
                      width: 200,
                      onPress: () {},
                      text: "ADD TO CART",
                      style: _themeData.textTheme.button!
                          .apply(color: whiteColor)
                          .copyWith(fontSize: 15, letterSpacing: 0.8),
                      icon: Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: const Icon(
                          Icons.shopping_bag,
                          size: 22,
                          color: primaryColor,
                        ),
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
}
