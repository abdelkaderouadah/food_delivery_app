import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';

class CustomCardSearchRestaurant extends StatelessWidget {
  final String restaurantImage, restaurantName;
  const CustomCardSearchRestaurant({
    Key? key,
    required this.restaurantImage,
    required this.restaurantName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.blueGrey),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 5,
              height: 30,
              width: 30,
              child: SquareIconButton(
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
                      restaurantImage,
                      fit: BoxFit.none,
                      height: 35,
                      width: 35,
                    ),
                  ),
                ),
                addVerticalSpace(20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      restaurantName,
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
                      "Free",
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
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Text(
                          "BURGER",
                          style: _themeData.textTheme.caption,
                        ),
                      ),
                    ),
                    Card(
                      //color
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Text(
                          "FAST FOOD",
                          style: _themeData.textTheme.caption,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
