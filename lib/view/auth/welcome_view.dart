import 'package:flutter/material.dart';
import 'package:food_delivery_app/helper/routes.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/button.dart';
import 'package:food_delivery_app/view/widgets/icon_button.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/background/background.png",
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    fit: BoxFit.cover,
                  ),
                  Scaffold(
                    backgroundColor: Colors.transparent,
                    body: SingleChildScrollView(
                      child: Container(
                        height: constraints.maxHeight,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.5, -1),
                            end: Alignment(0.7, 0.7),
                            colors: [
                              Color.fromARGB(0, 73, 77, 99),
                              Color(0xFF191B2F),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 30, right: 25),
                              alignment: Alignment.centerRight,
                              //Skip button
                              child: TextButton(
                                onPressed: () => Get.toNamed(
                                  RoutingNameConstants.homeScreen,
                                ),
                                child: Text(
                                  "Skip",
                                  style: _themeData.textTheme.subtitle2!
                                      .apply(color: primaryColor),
                                  textAlign: TextAlign.center,
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  fixedSize: const Size(25, 25),
                                  shape: const RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(27),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            addVerticalSpace(constraints.maxHeight * 0.1),
                            Text(
                              'Welcome to',
                              style: _themeData.textTheme.headline1!
                                  .apply(color: primaryTextColor),
                            ),
                            Text(
                              'FoodHub',
                              style: _themeData.textTheme.headline1!
                                  .apply(color: primaryColor),
                            ),
                            Text(
                              'Your favorite foods delivered\nfast at your door.',
                              style: _themeData.textTheme.headline4!
                                  .apply(color: const Color(0xFF30384F)),
                            ),
                            addVerticalSpace(constraints.maxHeight * 0.25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/background/divider.png",
                                ),
                                addHorizontalSpace(10),
                                Text(
                                  'sign in with',
                                  style: _themeData.textTheme.subtitle2!
                                      .apply(color: whiteColor),
                                ),
                                addHorizontalSpace(10),
                                Image.asset(
                                  "assets/images//background/divider.png",
                                ),
                              ],
                            ),
                            addVerticalSpace(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                  text: "FACEBOOK",
                                  style: _themeData.textTheme.button!
                                      .apply(color: primaryTextColor),
                                  icon: Image.asset(
                                    "assets/images/icons/facebook.png",
                                  ),
                                  backgroundColor: whiteColor,
                                  borderColor: whiteColor,
                                  onPress: () {
                                    //TODO Facebook
                                  },
                                ),
                                CustomIconButton(
                                  text: "GOOGLE",
                                  style: _themeData.textTheme.button!
                                      .apply(color: primaryTextColor),
                                  icon: Image.asset(
                                    "assets/images/icons/google.png",
                                  ),
                                  backgroundColor: whiteColor,
                                  borderColor: whiteColor,
                                  onPress: () {
                                    //TODO Google
                                  },
                                ),
                              ],
                            ),
                            addVerticalSpace(20),
                            CustomButton(
                              height: 60,
                              width: 320,
                              backgroundColor: Colors.grey.withOpacity(0.4),
                              borderColor: whiteColor,
                              text: 'Start with email or phone',
                              style: _themeData.textTheme.bodyText1!
                                  .apply(color: whiteColor),
                              onPress: () => Get.toNamed(
                                RoutingNameConstants.registerScreen,
                              ),
                            ),
                            addVerticalSpace(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: _themeData.textTheme.subtitle1!
                                      .apply(color: whiteColor),
                                ),
                                TextButton(
                                  onPressed: () => Get.toNamed(
                                    RoutingNameConstants.loginScreen,
                                  ),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'Sign In',
                                      style: _themeData.textTheme.headline5!
                                          .apply(color: whiteColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
