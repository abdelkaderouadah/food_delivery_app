import 'package:food_delivery_app/core/view_model/auth_view_model.dart';
import 'package:food_delivery_app/core/view_model/cart_view_model.dart';
import 'package:food_delivery_app/core/view_model/onboarding_view_model.dart';
import 'package:food_delivery_app/core/view_model/order_view_model.dart';
import 'package:food_delivery_app/core/view_model/restaurant_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => OnboardingViewModel());
    Get.lazyPut(() => RestaurantViewModel());
    Get.lazyPut(() => OrderViewModel());
    Get.lazyPut(() => CartViewModel());
  }
}
