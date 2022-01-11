import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/button.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:food_delivery_app/view/widgets/text_form_field.dart';
import 'package:get/get.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    var phoneController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(children: [
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
                        addVerticalSpace(30),
                        Text(
                          'Reset Password',
                          style: _themeData.textTheme.headline2,
                        ),
                        addVerticalSpace(10),
                        Text(
                          "Please enter your email address to \nrequest a password reset",
                          style: _themeData.textTheme.subtitle2,
                        ),
                        addVerticalSpace(10),
                        CustomTextFormField(
                          controller: phoneController,
                          text: "",
                          style: _themeData.textTheme.headline5!,
                          hint: 'email@gmail.com',
                          keybordType: TextInputType.emailAddress,
                          inputStyle: _themeData.textTheme.headline4!,
                          fillColor: Get.isDarkMode
                              ? const Color(0xFF393948)
                              : primaryBackgroundColor,
                        ),
                        addVerticalSpace(30),
                        Align(
                          alignment: Alignment.center,
                          child: CustomButton(
                            width: 250.0,
                            text: 'SEND NEW PASSWORD',
                            style: _themeData.textTheme.headline6!
                                .copyWith(letterSpacing: 1.8),
                            onPress: () {
                              //TODO SignUp
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}
