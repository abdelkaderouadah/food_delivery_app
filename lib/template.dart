import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';

class Template extends StatelessWidget {
  Template({Key? key}) : super(key: key);

  final List<String> category = <String>[
    'Burger',
    'Donat',
    'Pizza',
    'Mexican',
    'Asian',
  ];

  @override
  Widget build(BuildContext context) {
    // final ThemeData _themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: darkBackgroundColor,
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 320,
                    width: 320,
                    padding: const EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryColor,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(115),
                        child: Image.asset(
                          "assets/images/onboarding/photo2.png",
                        ),
                      ),
                    ),
                  ),
                  //starbuck
                  Positioned(
                    right: 40,
                    top: 0,
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/logo/starbuck.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  //kfc
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/onboarding/kfc.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  //pizza hut
                  Positioned(
                    left: 20,
                    top: 100,
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/logo/pizza_hut.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  //jimmy
                  Positioned(
                    left: 145,
                    bottom: 35,
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/logo/jimmy_jhons.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  //burgerking
                  Positioned(
                    right: 40,
                    bottom: 80,
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/logo/burger_king.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Text(
              //   "A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around. A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes",
              //   style: _themeData.textTheme.subtitle2!.apply(heightDelta: 2.0),
              // ),
              // addVerticalSpace(20),
              // SquareIconButton(
              //   onPressed: () {},
              //   width: 50,
              //   borderRadius: 10,
              //   buttonColor: whiteColor,
              //   // borderColor: whiteColor,
              //   child: Image.asset(
              //     "assets/images/icons/filter.png",
              //   ),
              // ),
              // addVerticalSpace(20),
              // Container(
              //   padding: const EdgeInsets.all(5),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(50),
              //     border: Border.all(color: primaryColor, width: 1.5),
              //     color: Colors.blue,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       CustomButton(
              //         text: "Food Items",
              //         onPress: () {},
              //         style: _themeData.textTheme.button!,
              //       ),
              //       addHorizontalSpace(10),
              //       CustomButton(
              //         text: "Food Items",
              //         onPress: () {},
              //         style:
              //             _themeData.textTheme.button!.apply(color: blackColor),
              //         backgroundColor: whiteColor,
              //         borderColor: primaryColor,
              //       ),
              //     ],
              //   ),
              // ),
              // addVerticalSpace(10),
              // Text(
              //   "Found 30 results",
              //   style: _themeData.textTheme.headline3,
              // ),
              // addVerticalSpace(10),
              // Container(
              //     height: 500,
              //     width: MediaQuery.of(context).size.width,
              //     padding: const EdgeInsets.all(10),
              //     child: GridView.builder(
              //       gridDelegate:
              //           const SliverGridDelegateWithFixedCrossAxisCount(
              //         crossAxisCount: 2,
              //         crossAxisSpacing: 5,
              //         mainAxisSpacing: 5,
              //       ),
              //       itemBuilder: (context, index) {
              //         return const Center(
              //           child: CustomCardFood(
              //             width: 160,
              //             backgoundImage: "assets/images/food4.png",
              //             itemPrice: "10.78",
              //             review: "4.8",
              //             nbReview: "36",
              //             itemTitle: "Salmon Salad",
              //             itemDescription: "Baked salmon fish",
              //           ),
              //         );
              //       },
              //     )),
              // addVerticalSpace(20),
              // const SizedBox(
              //   height: 180,
              //   width: 180,
              //   child: CustomCardSearchRestaurant(
              //     restaurantImage: "assets/images/logo/food2.png",
              //     restaurantName: "Pizza Hut",
              //   ),
              // ),
              // addVerticalSpace(20),
              // SizedBox(
              //   height: 170,
              //   width: 320,
              //   child: CustomCardLastedOrders(
              //     restaurantImage: "assets/images/logo/jimmy_jhons.png",
              //     restaurantName: "Jimmy John's",
              //     nbItem: "2",
              //     reOrder: () {},
              //     rateOrder: () {},
              //     date: "19 juin, 11:50",
              //     price: "20.50",
              //   ),
              // ),
              // addVerticalSpace(20),
              // SizedBox(
              //   height: 170,
              //   width: 320,
              //   child: CustomCardLastedOrders(
              //     restaurantImage: "assets/images/logo/subway.png",
              //     restaurantName: "Subway",
              //     nbItem: "2",
              //     reOrder: () {},
              //     rateOrder: () {},
              //     date: "19 juin, 11:50",
              //     price: "20.50",
              //   ),
              // ),
              // addVerticalSpace(20),
              // SizedBox(
              //   height: 240,
              //   width: 320,
              //   child: CustomCardUpcomingOrders(
              //     restaurantImage: "assets/images/logo/starbuck.png",
              //     restaurantName: "Starbuck",
              //     nbItem: "3",
              //     nCommand: "#244100",
              //     tempEstim: "25",
              //     onTrackOrder: () {},
              //     cancelOrder: () {},
              //   ),
              // ),
              // addVerticalSpace(30),
              // Row(
              //   children: const [
              //     Divider(
              //       color: primaryColor,
              //       thickness: 2.0,
              //     ),
              //     Text('data'),
              //     Divider(
              //       color: primaryColor,
              //       thickness: 2.0,
              //     ),
              //   ],
              // ),
              // addVerticalSpace(30),
              // SizedBox(
              //   height: 100.0,
              //   width: 500,
              //   child: ListView.separated(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: category.length,
              //     itemBuilder: (context, index) {
              //       return InkWell(
              //         onTap: () {},
              //         child: Container(
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(50),
              //             color: primaryColor,
              //           ),
              //           height: 100,
              //           width: 60,
              //           padding: const EdgeInsets.symmetric(
              //               horizontal: 5, vertical: 5),
              //           child: Column(
              //             children: [
              //               ClipRRect(
              //                 borderRadius: BorderRadius.circular(50),
              //                 child: Image.asset(
              //                   "assets/images/category/${category[index]}.png",
              //                   fit: BoxFit.contain,
              //                   height: 50,
              //                   width: 50,
              //                 ),
              //               ),
              //               addVerticalSpace(10),
              //               Text(
              //                 category[index],
              //                 style: _themeData.textTheme.caption!
              //                     .copyWith(color: blackColor, fontSize: 11),
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //     separatorBuilder: (BuildContext context, int index) =>
              //         const SizedBox(width: 10),
              //   ),
              // ),
              // addVerticalSpace(30),
              // SizedBox(
              //   height: 240,
              //   child: ListView.separated(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 4,
              //     itemBuilder: (context, index) {
              //       return const CustomCardFood(
              //         width: 160,
              //         backgoundImage: "assets/images/food4.png",
              //         itemPrice: "10.78",
              //         review: "4.8",
              //         nbReview: "36",
              //         itemTitle: "Salmon Salad",
              //         itemDescription: "Baked salmon fish",
              //       );
              //     },
              //     separatorBuilder: (context, index) => addHorizontalSpace(10),
              //   ),
              // ),
              // addVerticalSpace(30),
              // SizedBox(
              //   height: 280,
              //   child: ListView.separated(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 4,
              //     itemBuilder: (context, index) {
              //       return const CustomCardRestaurant(
              //         width: 270,
              //         backgroundImage: "assets/images/food1.png",
              //         review: "5.2",
              //         nbReview: "44",
              //         nameRestaurant: "McDonald's",
              //       );
              //     },
              //     separatorBuilder: (context, index) => addHorizontalSpace(10),
              //   ),
              // ),
              // addVerticalSpace(30),
              // SizedBox(
              //   height: 250,
              //   child: ListView.separated(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 4,
              //     itemBuilder: (context, index) {
              //       return const CustomCardFood(
              //         width: 270,
              //         backgoundImage: "assets/images/food1.png",
              //         itemPrice: "10.78",
              //         review: "4.8",
              //         nbReview: "36",
              //         itemTitle: "Chicken Hawaiian",
              //         itemDescription: "Chicken, Cheese and pineapple",
              //       );
              //     },
              //     separatorBuilder: (context, index) => addHorizontalSpace(10),
              //   ),
              // ),
              // addVerticalSpace(30),
              // SizedBox(
              //     height: 300,
              //     child: ListView.separated(
              //       separatorBuilder: (context, index) => addVerticalSpace(10),
              //       scrollDirection: Axis.vertical,
              //       itemCount: 3,
              //       itemBuilder: (context, index) {
              //         return CustomCard(
              //           imageUrl: "assets/images/food2.png",
              //           productName: "Red pizza hut",
              //           productDetails: "productt details",
              //           productPrice: "15.30",
              //           onClose: () {},
              //           onAdd: () {},
              //           onSub: () {},
              //         );
              //       },
              //     )),
              // addVerticalSpace(20),
              // SizedBox(
              //   height: 100,
              //   width: 450,
              //   child: Row(
              //     children: const [
              //       CustomCodeTextField(),
              //       CustomCodeTextField(),
              //       CustomCodeTextField(),
              //       CustomCodeTextField(),
              //     ],
              //   ),
              // ),
              // addVerticalSpace(20),
              // const CustomPrice(
              //   price: "24.00",
              //   priceSize: 18,
              //   currencySize: 10,
              // ),
              // addVerticalSpace(20),
              // const CustomReview(
              //   review: '4.5',
              //   nbReview: '(25+)',
              // ),
              // addVerticalSpace(20),
              // SquareIconButton(
              //   onPressed: () {},
              //   width: 34,
              //   borderRadius: 10,
              //   buttonColor: whiteColor,
              //   borderColor: whiteColor,
              //   child: const Padding(
              //     padding: EdgeInsets.only(left: 8),
              //     child: Icon(
              //       Icons.arrow_back_ios,
              //       color: blackColor,
              //       size: 20,
              //     ),
              //   ),
              // ),
              // addVerticalSpace(20),
              // SquareIconButton(
              //   onPressed: () {},
              //   buttonColor: whiteColor,
              //   borderColor: primaryColor,
              //   child: const Center(
              //     child: Text(
              //       "-",
              //       style: TextStyle(
              //         color: primaryColor,
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // addVerticalSpace(20),
              // SquareIconButton(
              //   onPressed: () {},
              //   buttonColor: whiteColor,
              //   borderColor: primaryColor,
              //   child: const Icon(
              //     Icons.add,
              //     color: primaryColor,
              //   ),
              // ),
              // addVerticalSpace(20),
              // SquareIconButton(
              //   onPressed: () {},
              //   child: const Icon(
              //     Icons.favorite,
              //     color: whiteColor,
              //     size: 18,
              //   ),
              // ),
              // addVerticalSpace(20),
              // CustomButton(
              //   onPress: () {},
              //   text: "SIGN UP",
              //   style: _themeData.textTheme.button!
              //       .apply(color: whiteColor)
              //       .copyWith(fontSize: 15, letterSpacing: 1.8),
              // ),
              // addVerticalSpace(20),
              // CustomIconButton(
              //   onPress: () {},
              //   text: "FACEBOOK",
              //   style: _themeData.textTheme.button!.copyWith(color: blackColor),
              //   icon: Image.asset(
              //     "assets/images/icons/facebook.png",
              //   ),
              // ),
              // addVerticalSpace(20),
              // CustomIconButton(
              //   width: 190,
              //   onPress: () {},
              //   text: "ADD TO CART",
              //   style: _themeData.textTheme.button!
              //       .apply(color: whiteColor)
              //       .copyWith(fontSize: 15, letterSpacing: 0.8),
              //   icon: Container(
              //     height: 45,
              //     width: 45,
              //     decoration: const BoxDecoration(
              //       shape: BoxShape.circle,
              //       color: whiteColor,
              //     ),
              //     child: const Icon(
              //       Icons.shopping_bag,
              //       size: 18,
              //       color: primaryColor,
              //     ),
              //   ),
              // ),
              // addVerticalSpace(20),
              // CustomIconButton(
              //   onPress: () {},
              //   text: "GOOGLE",
              //   style: _themeData.textTheme.button!.copyWith(color: blackColor),
              //   icon: Image.asset(
              //     "assets/images/icons/google.png",
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
