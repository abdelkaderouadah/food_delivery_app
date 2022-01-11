import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/button.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:get/get.dart';

class SearchRestaurantView extends StatelessWidget {
  const SearchRestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    var serachRestaurantController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.30,
                      width: constraints.maxWidth,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
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
                              Text(
                                "Search Restaurant",
                                style: _themeData.textTheme.bodyText1!
                                    .copyWith(fontWeight: FontWeight.w400),
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
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: serachRestaurantController,
                                  keyboardType: TextInputType.text,
                                  style: _themeData.textTheme.headline4!,
                                  decoration: InputDecoration(
                                    hintText: "Find food or restaurant...",
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.search,
                                        color: Color(0xFF767F9D),
                                      ),
                                    ),
                                    hintStyle:
                                        _themeData.textTheme.subtitle2!.apply(
                                      color: Get.isDarkMode
                                          ? subTextColor
                                          : const Color(0xFF9DA4BB),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 20.0,
                                      horizontal: 30.0,
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
                                  //TODO search restaurant
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
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Get.isDarkMode
                                    ? subBackgroundColor
                                    : primaryBackgroundColor,
                                width: 1.5,
                              ),
                              color: Get.isDarkMode
                                  ? darkBackgroundColor
                                  : primaryBackgroundColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                  height: 50,
                                  width: 155,
                                  text: "Food Items",
                                  onPress: () {},
                                  style: _themeData.textTheme.headline6!.apply(
                                    color: Get.isDarkMode
                                        ? whiteColor
                                        : primaryColor,
                                  ),
                                  backgroundColor: Get.isDarkMode
                                      ? darkBackgroundColor
                                      : primaryBackgroundColor,
                                  borderColor: Get.isDarkMode
                                      ? darkBackgroundColor
                                      : primaryBackgroundColor,
                                ),
                                CustomButton(
                                  height: 50,
                                  width: 155,
                                  text: "Restaurant",
                                  onPress: () {},
                                  style: _themeData.textTheme.headline6!,
                                  backgroundColor: primaryColor,
                                  borderColor: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(30),
                    Text(
                      "Found 30 results",
                      style: _themeData.textTheme.headline3,
                    ),
                    addVerticalSpace(20),
                    Container(
                      height: constraints.maxHeight * 0.7,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          return _buildSearchCard(
                              context,
                              "assets/images/logo/burger_king.png",
                              "Burger King",
                              "4.8",
                              "free",
                              ["PIZZA", "CHICKEN"]);
                        },
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

  Widget _buildSearchCard(BuildContext context, String image, String name,
      String review, String delivery, List<String> tag) {
    final ThemeData _themeData = Theme.of(context);
    return Container(
      height: 230,
      width: 190,
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Get.isDarkMode ? subBackgroundColor : primaryBackgroundColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            height: 30,
            width: 30,
            child: SquareIconButton(
              borderColor: Get.isDarkMode ? subBackgroundColor : primaryColor,
              buttonColor: Get.isDarkMode ? subBackgroundColor : primaryColor,
              onPressed: () {},
              child: const Icon(
                Icons.favorite,
                color: whiteColor,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        image,
                        fit: BoxFit.none,
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -10,
                    right: -10,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Center(
                        child: Text(
                          review,
                          style: _themeData.textTheme.caption!
                              .apply(color: whiteColor)
                              .copyWith(fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              addVerticalSpace(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: _themeData.textTheme.headline6,
                  ),
                  addHorizontalSpace(5),
                  const Icon(
                    Icons.check_circle_rounded,
                    color: Color(0xff029094),
                    size: 11,
                  ),
                ],
              ),
              addVerticalSpace(5),
              Row(
                children: [
                  Image.asset(
                    "assets/images/icons/delivery.png",
                    height: 10,
                    width: 10,
                    fit: BoxFit.contain,
                  ),
                  addHorizontalSpace(5),
                  Text(
                    delivery,
                    style: _themeData.textTheme.caption,
                  ),
                  addHorizontalSpace(20),
                  Image.asset(
                    "assets/images/icons/time.png",
                    height: 10,
                    width: 10,
                    fit: BoxFit.contain,
                  ),
                  addHorizontalSpace(5),
                  Text(
                    "10-15 mins",
                    style: _themeData.textTheme.caption,
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    color: Get.isDarkMode ? lowColor : primaryBackgroundColor,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      child: Text(
                        tag[0],
                        style: _themeData.textTheme.caption,
                      ),
                    ),
                  ),
                  Card(
                    color: Get.isDarkMode ? lowColor : primaryBackgroundColor,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      child: Text(
                        tag[1],
                        style: _themeData.textTheme.caption,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
