import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/button.dart';

class CustomCardLastedOrders extends StatelessWidget {
  final Function() reOrder, rateOrder;
  final String restaurantName, restaurantImage, date, nbItem, price;
  const CustomCardLastedOrders({
    Key? key,
    required this.restaurantImage,
    required this.restaurantName,
    required this.nbItem,
    required this.reOrder,
    required this.rateOrder,
    required this.date,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    restaurantImage,
                    fit: BoxFit.none,
                    height: 45,
                    width: 45,
                  ),
                ),
              ),
              addHorizontalSpace(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        date,
                        style: _themeData.textTheme.caption,
                      ),
                      addHorizontalSpace(10),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: subColor,
                        ),
                      ),
                      addHorizontalSpace(10),
                      RichText(
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: nbItem,
                              style: _themeData.textTheme.caption,
                            ),
                            TextSpan(
                              text: " Items",
                              style: _themeData.textTheme.caption,
                            ),
                          ],
                        ),
                      ),
                      addHorizontalSpace(20),
                      RichText(
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$",
                              style: _themeData.textTheme.headline5!
                                  .apply(color: primaryColor),
                            ),
                            TextSpan(
                              text: price,
                              style: _themeData.textTheme.headline5!
                                  .apply(color: primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        restaurantName,
                        style: _themeData.textTheme.subtitle1,
                      ),
                      addHorizontalSpace(5),
                      const Icon(
                        Icons.check_circle_rounded,
                        color: Color(0xff029094),
                        size: 13,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 7,
                        width: 7,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF53D776),
                        ),
                      ),
                      addHorizontalSpace(5),
                      Text(
                        "Order Delivered",
                        style: _themeData.textTheme.caption!
                            .apply(color: const Color(0xFF53D776)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          addVerticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "Rate",
                style: _themeData.textTheme.button!
                    .apply(color: blackColor)
                    .copyWith(fontSize: 15, letterSpacing: 1.8),
                onPress: () => rateOrder,
                width: 130,
                height: 45,
                backgroundColor: whiteColor,
                borderColor: whiteColor,
              ),
              addHorizontalSpace(10),
              CustomButton(
                text: "Re-Order",
                style: _themeData.textTheme.button!
                    .copyWith(fontSize: 15, letterSpacing: 1.8),
                onPress: () => reOrder,
                width: 130,
                height: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
