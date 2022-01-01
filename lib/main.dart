import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/auth/login_view.dart';
import 'package:food_delivery_app/view/auth/onboarding_view.dart';
import 'package:food_delivery_app/view/auth/signup_view.dart';
import 'package:food_delivery_app/view/auth/template.dart';
import 'package:food_delivery_app/view/screens/food_details_view.dart';
import 'package:food_delivery_app/view/screens/home_screen_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: primaryColor));
    return LayoutBuilder(builder: (context, constraints) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FoodHub app',
        theme: lightTheme,
        home: OnboardingView(),
      );
    });
  }
}
