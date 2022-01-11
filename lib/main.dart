import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/helper/binding.dart';
import 'package:food_delivery_app/helper/routes.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/auth/login_view.dart';
import 'package:food_delivery_app/view/auth/phone_register_view.dart';
import 'package:food_delivery_app/view/auth/register_view.dart';
import 'package:food_delivery_app/view/auth/reset_password_view.dart';
import 'package:food_delivery_app/view/auth/verify_code_view.dart';
import 'package:food_delivery_app/view/screens/category_view.dart';
import 'package:food_delivery_app/view/screens/food_details_view.dart';
import 'package:food_delivery_app/view/screens/home_screen_view.dart';
import 'package:food_delivery_app/view/screens/restaurant_profile.dart';
import 'package:food_delivery_app/view/screens/search_restaurant_view.dart';
import 'package:get/get.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: primaryColor));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      // initialRoute: RoutingNameConstants.onboardingScreen,
      // getPages: AppRoute.routes,
      home: const CategoryView(),
      title: 'FoodHub app',
      theme: darkTheme,
    );
  }
}
