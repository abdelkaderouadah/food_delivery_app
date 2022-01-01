import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/sample_data.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/screens/food_details_view.dart';
import 'package:food_delivery_app/view/screens/side_menu_view.dart';
import 'package:food_delivery_app/view/widgets/card_food.dart';
import 'package:food_delivery_app/view/widgets/card_restaurant.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:get/get.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        drawer: const SideMenuView(),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.30,
                      width: constraints.maxWidth,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SquareIconButton(
                                width: 35,
                                borderRadius: 10,
                                buttonColor: Get.isDarkMode
                                    ? subBackgroundColor
                                    : primaryBackgroundColor,
                                borderColor: Get.isDarkMode
                                    ? subBackgroundColor
                                    : primaryBackgroundColor,
                                onPressed: () {
                                  //TODO side_menu
                                  Scaffold.of(context).openDrawer();
                                },
                                child: Icon(
                                  Icons.menu,
                                  color: Get.isDarkMode
                                      ? primaryBackgroundColor
                                      : subBackgroundColor,
                                  size: 20,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Deliver to",
                                        style: _themeData.textTheme.subtitle2!,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Get.isDarkMode
                                            ? subTextColor
                                            : primaryTextColor,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "4102 Pretty View Lane",
                                    style: _themeData.textTheme.subtitle2!
                                        .apply(color: primaryColor),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.isDarkMode
                                      ? Get.changeTheme(lightTheme)
                                      : Get.changeTheme(darkTheme);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/images/user.png",
                                    fit: BoxFit.cover,
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "What would you like \nto order",
                            style: _themeData.textTheme.headline3,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  onSaved: (_) {},
                                  validator: (_) {},
                                  keyboardType: TextInputType.text,
                                  style: _themeData.textTheme.headline4!,
                                  decoration: InputDecoration(
                                    hintText: "Find food or restaurant...",
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Color(0xFF767F9D),
                                    ),
                                    hintStyle:
                                        _themeData.textTheme.subtitle2!.apply(
                                      color: Get.isDarkMode
                                          ? subTextColor
                                          : const Color(0xFF9DA4BB),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15.0,
                                      horizontal: 15.0,
                                    ),
                                    fillColor: Get.isDarkMode
                                        ? subBackgroundColor
                                        : primaryBackgroundColor,
                                    filled: true,
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                        color: primaryColor,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              addHorizontalSpace(10),
                              SquareIconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const FoodDetailsView();
                                    },
                                  ));
                                },
                                width: 50,
                                borderRadius: 10,
                                buttonColor: Get.isDarkMode
                                    ? subBackgroundColor
                                    : primaryBackgroundColor,
                                borderColor: Get.isDarkMode
                                    ? subBackgroundColor
                                    : primaryBackgroundColor,
                                child: Image.asset(
                                  "assets/images/icons/filter.png",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(25),
                    Container(
                      height: 120,
                      margin: const EdgeInsets.only(left: 20),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 100,
                              width: 70,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Get.isDarkMode
                                    ? subBackgroundColor
                                    : primaryBackgroundColor,
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/images/category/${category[index]}.png",
                                      fit: BoxFit.cover,
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  addVerticalSpace(15),
                                  Text(
                                    category[index],
                                    style: _themeData.textTheme.caption!,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(width: 15),
                      ),
                    ),
                    addVerticalSpace(25),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Featured restaurants",
                        style: _themeData.textTheme.headline4,
                      ),
                    ),
                    addVerticalSpace(15),
                    Container(
                      height: 240,
                      margin: const EdgeInsets.only(left: 20),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CustomCardRestaurant(
                            width: 260,
                            backgroundImage: "assets/images/food1.png",
                            review: "4.5",
                            nbReview: "25",
                            nameRestaurant: "McDonald's",
                            cardColor: Get.isDarkMode
                                ? subBackgroundColor
                                : primaryBackgroundColor,
                            smallCardColor: Get.isDarkMode
                                ? lowColor
                                : primaryBackgroundColor,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            addHorizontalSpace(10),
                      ),
                    ),
                    addVerticalSpace(25),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Popular items",
                        style: _themeData.textTheme.headline4,
                      ),
                    ),
                    addVerticalSpace(15),
                    Container(
                      height: 220,
                      margin: const EdgeInsets.only(left: 20),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CustomCardFood(
                            width: 170,
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
                    addVerticalSpace(15),
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
