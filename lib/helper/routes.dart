import 'package:food_delivery_app/view/auth/login_view.dart';
import 'package:food_delivery_app/view/auth/onboarding_view.dart';
import 'package:food_delivery_app/view/auth/phone_register_view.dart';
import 'package:food_delivery_app/view/auth/register_view.dart';
import 'package:food_delivery_app/view/auth/reset_password_view.dart';
import 'package:food_delivery_app/view/auth/splash_view.dart';
import 'package:food_delivery_app/view/auth/verify_code_view.dart';
import 'package:food_delivery_app/view/auth/welcome_view.dart';
import 'package:food_delivery_app/view/screens/category_view.dart';
import 'package:food_delivery_app/view/screens/food_details_view.dart';
import 'package:food_delivery_app/view/screens/home_screen_view.dart';
import 'package:food_delivery_app/view/screens/restaurant_profile.dart';
import 'package:food_delivery_app/view/screens/search_restaurant_view.dart';
import 'package:get/get.dart';

class AppRoute {
  AppRoute._();
  static final routes = [
    GetPage(
      name: RoutingNameConstants.splashScreen,
      page: () => const SplashView(),
    ),
    GetPage(
      name: RoutingNameConstants.onboardingScreen,
      page: () => const OnboardingView(),
    ),
    GetPage(
      name: RoutingNameConstants.welcomeScreen,
      page: () => const WelcomeView(),
    ),
    GetPage(
      name: RoutingNameConstants.registerScreen,
      page: () => const RegisterView(),
    ),
    GetPage(
      name: RoutingNameConstants.loginScreen,
      page: () => const LoginView(),
    ),
    GetPage(
      name: RoutingNameConstants.phoneRegisterScreen,
      page: () => const PhoneRegisterView(),
    ),
    GetPage(
      name: RoutingNameConstants.verifyCodeScreen,
      page: () => const VerifyCodeView(),
    ),
    GetPage(
      name: RoutingNameConstants.resetPasswordScreen,
      page: () => const ResetPasswordView(),
    ),
    GetPage(
      name: RoutingNameConstants.homeScreen,
      page: () => const HomeScreenView(),
    ),
    GetPage(
      name: RoutingNameConstants.foodDetailsScreen,
      page: () => const FoodDetailsView(),
    ),
    GetPage(
      name: RoutingNameConstants.categoryScreen,
      page: () => const CategoryView(),
    ),
    GetPage(
      name: RoutingNameConstants.restaurantProfileScreen,
      page: () => const RestaurantProfileView(),
    ),
    GetPage(
      name: RoutingNameConstants.foodDetailsScreen,
      page: () => const SearchRestaurantView(),
    ),
  ];
}

class RoutingNameConstants {
  //Authentification
  static const String splashScreen = "/splash_screen";
  static const String onboardingScreen = "/onboarding_screen";
  static const String welcomeScreen = "/welcome_screen";
  static const String registerScreen = "/register_screen";
  static const String loginScreen = "/login_screen";
  static const String phoneRegisterScreen = "/phone_register_screen";
  static const String verifyCodeScreen = "/verify_code_screen";
  static const String resetPasswordScreen = "/reset_password_screen";
  //Main Screens
  static const String homeScreen = "/home_screen";
  static const String foodDetailsScreen = "/food_details_screen";
  static const String categoryScreen = "/category_screen";
  static const String restaurantProfileScreen = "/restaurant_profile_screen";
  static const String searchRestaurantScreen = "/search_restaurant_screen";
}
