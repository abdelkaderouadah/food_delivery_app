import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/view_model/auth_view_model.dart';
import 'package:food_delivery_app/helper/routes.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/button.dart';
import 'package:food_delivery_app/view/widgets/icon_button.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:food_delivery_app/view/widgets/text_form_field.dart';
import 'package:get/get.dart';

class LoginView extends GetWidget<AuthViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);

    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
                  Positioned(
                    top: -20,
                    left: -20,
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      "assets/images/background/Ellipse_right_left.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: -5,
                    right: -5,
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      "assets/images/background/Ellipse_right.png",
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: constraints.maxHeight * 0.15,
                            alignment: Alignment.centerLeft,
                            child: SquareIconButton(
                              onPressed: () => Get.back(),
                              width: 34,
                              borderRadius: 10,
                              buttonColor: Get.isDarkMode
                                  ? darkBackgroundColor
                                  : primaryBackgroundColor,
                              borderColor: Get.isDarkMode
                                  ? darkBackgroundColor
                                  : primaryBackgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Get.isDarkMode
                                      ? primaryBackgroundColor
                                      : darkBackgroundColor,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          addVerticalSpace(10),
                          Text(
                            'Login',
                            style: _themeData.textTheme.headline2,
                          ),
                          addVerticalSpace(30),
                          CustomTextFormField(
                            controller: emailController,
                            text: "E-mail",
                            style: _themeData.textTheme.headline5!,
                            hint: "Ouadah",
                            keybordType: TextInputType.emailAddress,
                            inputStyle: _themeData.textTheme.headline4!,
                            fillColor: Get.isDarkMode
                                ? const Color(0xFF393948)
                                : primaryBackgroundColor,
                          ),
                          addVerticalSpace(20),
                          CustomTextFormField(
                            controller: passwordController,
                            text: "Password",
                            style: _themeData.textTheme.headline5!,
                            hint: "*******",
                            obscureText: true,
                            keybordType: TextInputType.text,
                            inputStyle: _themeData.textTheme.headline4!,
                            fillColor: Get.isDarkMode
                                ? const Color(0xFF393948)
                                : primaryBackgroundColor,
                          ),
                          addVerticalSpace(10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => Get.toNamed(
                                  RoutingNameConstants.resetPasswordScreen),
                              child: Text(
                                "Forgot password?",
                                style: _themeData.textTheme.subtitle2!.apply(
                                  color: Get.isDarkMode
                                      ? subTextColor
                                      : primaryColor,
                                ),
                              ),
                            ),
                          ),
                          addVerticalSpace(25),
                          Align(
                            alignment: Alignment.center,
                            child: CustomButton(
                              width: 250.0,
                              text: "LOGIN",
                              style: _themeData.textTheme.headline6!
                                  .copyWith(letterSpacing: 1.8),
                              onPress: () {
                                //TODO Login
                              },
                            ),
                          ),
                          addVerticalSpace(25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dont't have an account?",
                                style: _themeData.textTheme.subtitle2!,
                              ),
                              TextButton(
                                onPressed: () => Get.toNamed(
                                    RoutingNameConstants.registerScreen),
                                child: Text(
                                  "Sign Up",
                                  style: _themeData.textTheme.subtitle2!
                                      .apply(color: primaryColor),
                                ),
                              ),
                            ],
                          ),
                          addVerticalSpace(30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/images/background/divider.png"),
                              addHorizontalSpace(10),
                              Text(
                                "Or sign in with",
                                style: _themeData.textTheme.subtitle2!,
                              ),
                              addHorizontalSpace(10),
                              Image.asset(
                                  "assets/images/background/divider.png"),
                            ],
                          ),
                          addVerticalSpace(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                onPress: () {
                                  //TODO Facebook
                                },
                                text: "FACEBOOK",
                                style: _themeData.textTheme.button!
                                    .apply(color: primaryTextColor),
                                icon: Image.asset(
                                  "assets/images/icons/facebook.png",
                                ),
                                backgroundColor: whiteColor,
                                borderColor: whiteColor,
                              ),
                              addHorizontalSpace(25),
                              CustomIconButton(
                                onPress: () {
                                  //TODO Google
                                },
                                text: "GOOGLE",
                                style: _themeData.textTheme.button!
                                    .apply(color: primaryTextColor),
                                icon: Image.asset(
                                  "assets/images/icons/google.png",
                                ),
                                backgroundColor: whiteColor,
                                borderColor: whiteColor,
                              ),
                            ],
                          ),
                        ],
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
