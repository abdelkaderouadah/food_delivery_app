import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/button.dart';
import 'package:food_delivery_app/view/widgets/icon_button.dart';
import 'package:food_delivery_app/view/widgets/text_form_field.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
                      padding: const EdgeInsets.only(top: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sign Up',
                              style: _themeData.textTheme.headline2,
                            ),
                          ),
                          addVerticalSpace(40),
                          CustomTextFormField(
                            text: "Full name",
                            style: _themeData.textTheme.headline5!,
                            hint: "Ouadah Abdelkader",
                            keybordType: TextInputType.emailAddress,
                            inputStyle: _themeData.textTheme.headline4!,
                            fillColor: Get.isDarkMode
                                ? const Color(0xFF393948)
                                : primaryBackgroundColor,
                            onSave: () {},
                            validator: () {},
                          ),
                          addVerticalSpace(20),
                          CustomTextFormField(
                            text: "E-mail",
                            style: _themeData.textTheme.headline5!,
                            hint: "ouadah.abdelkader9@gmail.com",
                            keybordType: TextInputType.emailAddress,
                            inputStyle: _themeData.textTheme.headline4!,
                            fillColor: Get.isDarkMode
                                ? const Color(0xFF393948)
                                : primaryBackgroundColor,
                            onSave: () {},
                            validator: () {},
                          ),
                          addVerticalSpace(20),
                          CustomTextFormField(
                            text: "Password",
                            style: _themeData.textTheme.headline5!,
                            hint: "*******",
                            obscureText: true,
                            keybordType: TextInputType.text,
                            inputStyle: _themeData.textTheme.headline4!,
                            fillColor: Get.isDarkMode
                                ? const Color(0xFF393948)
                                : primaryBackgroundColor,
                            onSave: () {},
                            validator: () {},
                          ),
                          addVerticalSpace(30),
                          CustomButton(
                            width: 250.0,
                            text: "SIGN UP",
                            style: _themeData.textTheme.headline6!
                                .copyWith(letterSpacing: 1.8),
                            onPress: () {
                              //TODO SignUp
                            },
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
                                onPressed: () {
                                  //TODO Login Button
                                  Get.isDarkMode
                                      ? Get.changeTheme(lightTheme)
                                      : Get.changeTheme(darkTheme);
                                },
                                child: Text(
                                  "Login",
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
                              addHorizontalSpace(20),
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
