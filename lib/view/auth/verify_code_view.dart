import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:get/get.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    // var phoneController = TextEditingController();
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
                          'Verification Code',
                          style: _themeData.textTheme.headline2,
                        ),
                        addVerticalSpace(10),
                        Text(
                          "please type the verification code sent to \nouadah.abdelkader9@gmail.com",
                          style: _themeData.textTheme.subtitle2,
                        ),
                        addVerticalSpace(30),
                        //TODO TexetField for Code verification
                        SizedBox(
                          width: constraints.maxWidth,
                          child: Row(
                            children: [
                              _buildCustomTextField(),
                              _buildCustomTextField(),
                              _buildCustomTextField(),
                              _buildCustomTextField(),
                            ],
                          ),
                        ),
                        addVerticalSpace(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "I don't receive a code! ",
                              style: _themeData.textTheme.subtitle2,
                            ),
                            TextButton(
                              onPressed: () {
                                //TODO Resend Verification Code Button
                              },
                              child: Text(
                                'Please resend',
                                style: _themeData.textTheme.subtitle2!
                                    .apply(color: primaryColor),
                              ),
                            ),
                          ],
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

  Widget _buildCustomTextField() {
    return Expanded(
      child: TextField(
        textAlign: TextAlign.center,
        cursorColor: primaryColor,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        keyboardType: TextInputType.number,
        style: const TextStyle(
          color: primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: '5',
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: primaryColor,
              width: 2.0,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
