import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/onboarding_model.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;

  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to login page
    } else {
      pageController.nextPage(
        duration: 300.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      "assets/images/onboarding/photo1.png",
      "Browse your menu and order directly",
      "Our app can send you everywhere, even space. For only \$2.99 per month",
      [
        "assets/images/onboarding/kfc.png",
        "assets/images/logo/jimmy_jhons.png",
        "assets/images/logo/burger_king.png",
        "assets/images/logo/pizza_hut.png",
        "assets/images/logo/starbuck.png",
      ],
    ),
    OnboardingInfo(
      "assets/images/onboarding/photo2.png",
      "Even to space with us! Together",
      "Our app can send you everywhere, even space. For only \$2.99 per month",
      [
        "assets/images/onboarding/food13.png",
        "assets/images/onboarding/food14.png",
        "assets/images/onboarding/food15.png",
        "assets/images/onboarding/food16.png",
        "assets/images/onboarding/food14.png",
      ],
    ),
    OnboardingInfo(
      "assets/images/onboarding/photo3.png",
      "Pickup delivery at your door",
      "Our app can send you everywhere, even space. For only \$2.99 per month",
      [
        "assets/images/onboarding/photo4.png",
        "assets/images/onboarding/photo5.png",
        "assets/images/onboarding/photo6.png",
        "assets/images/onboarding/photo7.png",
        "assets/images/onboarding/photo4.png",
      ],
    ),
  ];
}
