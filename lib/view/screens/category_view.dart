import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/card_food.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:get/get.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: constraints.maxHeight * 0.35,
                          width: constraints.maxWidth,
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: SquareIconButton(
                                  width: 35,
                                  borderRadius: 10,
                                  buttonColor: Get.isDarkMode
                                      ? subBackgroundColor
                                      : primaryBackgroundColor,
                                  borderColor: Get.isDarkMode
                                      ? subBackgroundColor
                                      : primaryBackgroundColor,
                                  onPressed: () => Get.back(),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Get.isDarkMode
                                          ? primaryBackgroundColor
                                          : subBackgroundColor,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ),
                              addVerticalSpace(30),
                              Text(
                                "Fast",
                                style: _themeData.textTheme.headline2!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Food",
                                style: _themeData.textTheme.headline1!.apply(
                                  color: Get.isDarkMode
                                      ? whiteColor
                                      : primaryColor,
                                ),
                              ),
                              addVerticalSpace(10),
                              Text(
                                "80 type of pizza",
                                style: _themeData.textTheme.headline5!
                                    .copyWith(fontSize: 19),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -5,
                          right: -5,
                          child: Image.asset(
                            "assets/images/background/category_pizza.png",
                            height: 250,
                            width: 250,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: constraints.maxWidth,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sort by:",
                                    style: _themeData.textTheme.subtitle2,
                                  ),
                                  addHorizontalSpace(10),
                                  DropdownButton<String>(
                                    //value: "dropDownValue",
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: primaryColor,
                                      size: 15,
                                    ),
                                    elevation: 0,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: primaryColor),
                                    items: <String>['Popular', 'B', 'C', 'D']
                                        .map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (_) {
                                      //TODO DropDown filter category
                                      //dropDownValue = newValue;
                                    },
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.isDarkMode
                                      ? Get.changeTheme(lightTheme)
                                      : Get.changeTheme(darkTheme);
                                },
                                child: Image.asset(
                                  "assets/images/icons/filter.png",
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          addVerticalSpace(20),
                          SizedBox(
                            height: constraints.maxHeight * 0.6,
                            child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return CustomCardFood(
                                  width: constraints.maxWidth,
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
                                  textReviewColor: Get.isDarkMode
                                      ? whiteColor
                                      : primaryTextColor,
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  addVerticalSpace(20),
                            ),
                          ),
                        ],
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
