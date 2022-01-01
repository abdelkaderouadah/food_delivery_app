import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/button.dart';

class CustomCardUpcomingOrders extends StatelessWidget {
  final Function() onTrackOrder, cancelOrder;
  final String restaurantName, restaurantImage, nbItem, nCommand, tempEstim;
  const CustomCardUpcomingOrders({
    Key? key,
    required this.restaurantImage,
    required this.restaurantName,
    required this.nbItem,
    required this.nCommand,
    required this.tempEstim,
    required this.onTrackOrder,
    required this.cancelOrder,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: Text(
                      "#264100",
                      style: _themeData.textTheme.headline5!
                          .copyWith(color: primaryColor),
                    ),
                  ),
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
                ],
              ),
            ],
          ),
          addVerticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Estimated Arrival",
                style: _themeData.textTheme.caption,
              ),
              Text(
                "Now",
                style: _themeData.textTheme.caption,
              ),
            ],
          ),
          addVerticalSpace(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: tempEstim,
                      style: _themeData.textTheme.headline2,
                    ),
                    TextSpan(
                      text: "min",
                      style: _themeData.textTheme.headline6,
                    ),
                  ],
                ),
              ),
              Text(
                "Food on the way",
                style: _themeData.textTheme.subtitle2,
              ),
            ],
          ),
          addVerticalSpace(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "Cancel",
                style: _themeData.textTheme.button!
                    .apply(color: blackColor)
                    .copyWith(fontSize: 15, letterSpacing: 1.8),
                onPress: () => cancelOrder,
                width: 130,
                height: 45,
                backgroundColor: whiteColor,
                borderColor: whiteColor,
              ),
              addHorizontalSpace(10),
              CustomButton(
                text: "Track Order",
                style: _themeData.textTheme.button!
                    .copyWith(fontSize: 15, letterSpacing: 1.8),
                onPress: () => onTrackOrder,
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
