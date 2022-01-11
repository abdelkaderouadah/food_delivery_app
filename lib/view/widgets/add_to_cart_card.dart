import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/price.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productDetails;
  final String productPrice;
  final Function() onClose;
  final Function() onAdd;
  final Function() onSub;
  const CustomCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.productDetails,
    required this.productPrice,
    required this.onClose,
    required this.onAdd,
    required this.onSub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Card(
      elevation: 0,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 20,
            height: 25,
            width: 25,
            child: SquareIconButton(
              onPressed: onClose,
              buttonColor: whiteColor,
              borderColor: primaryColor,
              child: const Icon(
                Icons.close,
                color: primaryColor,
                size: 15,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                  height: 100,
                  width: 100,
                ),
              ),
              addHorizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: _themeData.textTheme.headline4,
                  ),
                  addVerticalSpace(5),
                  Text(
                    productDetails,
                    style: _themeData.textTheme.subtitle2!
                        .copyWith(color: subColor),
                  ),
                  addVerticalSpace(5),
                  Row(
                    children: [
                      CustomPrice(
                        price: productPrice,
                        priceColor: primaryColor,
                        priceSize: 17,
                        currencySize: 16,
                      ),
                      addHorizontalSpace(15),
                      SquareIconButton(
                        onPressed: onSub,
                        buttonColor: whiteColor,
                        borderColor: primaryColor,
                        child: const Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      addHorizontalSpace(5),
                      Text(
                        "2",
                        style: _themeData.textTheme.subtitle1,
                      ),
                      addHorizontalSpace(5),
                      SquareIconButton(
                        onPressed: onAdd,
                        buttonColor: whiteColor,
                        borderColor: primaryColor,
                        child: const Icon(
                          Icons.add,
                          color: primaryColor,
                        ),
                      ),
                    ],
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
